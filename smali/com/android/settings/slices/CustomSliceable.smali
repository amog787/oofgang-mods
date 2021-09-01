.class public interface abstract Lcom/android/settings/slices/CustomSliceable;
.super Ljava/lang/Object;
.source "CustomSliceable.java"

# interfaces
.implements Lcom/android/settings/slices/Sliceable;


# direct methods
.method public static createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/slices/CustomSliceable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/CustomSliceable;",
            ">;)",
            "Lcom/android/settings/slices/CustomSliceable;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 112
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v0, v3

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/slices/CustomSliceable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sliceable class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/android/settings/slices/CustomSliceable;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface {p0}, Lcom/android/settings/slices/CustomSliceable;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    const-class v0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 97
    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getSlice()Landroidx/slice/Slice;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
