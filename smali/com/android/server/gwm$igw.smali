.class abstract Lcom/android/server/gwm$igw;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gwm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "igw"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/gwm;

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/gwm;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/gwm$igw;->you:Lcom/android/server/gwm;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/gwm$igw;->zta:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/gwm;->bvj()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/gwm$igw;->zta:Ljava/lang/String;

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/gwm$igw;->you()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/gwm$igw;->you()V

    return-void
.end method

.method public you()V
    .locals 3

    invoke-static {}, Lcom/android/server/gwm;->bvj()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/gwm$igw;->zta:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/gwm$igw;->zta(Z)V

    return-void
.end method

.method abstract zta(Z)V
.end method
