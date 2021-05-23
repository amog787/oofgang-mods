.class Lcom/android/server/ire$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/ire;


# direct methods
.method constructor <init>(Lcom/android/server/ire;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ire$zta;->zta:Lcom/android/server/ire;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/ire;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSmartPowerControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1f50b9c2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v3

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/server/ire;->zta()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "OpSmartPowerControl"

    const-string v0, "Package is removed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/ire$zta;->zta:Lcom/android/server/ire;

    invoke-virtual {p2, p1}, Lcom/android/server/ire;->veq(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/ire$zta;->zta:Lcom/android/server/ire;

    invoke-virtual {v0, p1}, Lcom/android/server/ire;->cgv(Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, p2

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/ire$zta;->zta:Lcom/android/server/ire;

    invoke-static {p1}, Lcom/android/server/ire;->you(Lcom/android/server/ire;)V

    iget-object p1, p0, Lcom/android/server/ire$zta;->zta:Lcom/android/server/ire;

    invoke-virtual {p1}, Lcom/android/server/ire;->vdw()V

    :cond_5
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_1
    return-void
.end method
