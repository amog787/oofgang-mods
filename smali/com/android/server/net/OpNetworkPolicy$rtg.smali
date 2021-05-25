.class final Lcom/android/server/net/OpNetworkPolicy$rtg;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/OpNetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "rtg"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/net/OpNetworkPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/net/OpNetworkPolicy;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$rtg;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/net/OpNetworkPolicy$rtg;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-virtual {p0}, Lcom/android/server/net/OpNetworkPolicy;->updateSettings()V

    return-void
.end method

.method zta()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/OpNetworkPolicy$rtg;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {v0}, Lcom/android/server/net/OpNetworkPolicy;->access$800(Lcom/android/server/net/OpNetworkPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_mode_policy"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/android/server/net/OpNetworkPolicy$rtg;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-virtual {p0}, Lcom/android/server/net/OpNetworkPolicy;->updateSettings()V

    return-void
.end method
