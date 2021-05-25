.class Lcom/android/server/net/OpNetworkPolicy$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/OpNetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/net/OpNetworkPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/net/OpNetworkPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$you;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/net/OpNetworkPolicy$you;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p0}, Lcom/android/server/net/OpNetworkPolicy;->access$900(Lcom/android/server/net/OpNetworkPolicy;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
