.class Lcom/android/server/net/OpNetworkPolicy$sis;
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

    iput-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$sis;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "OpNetworkPolicy"

    const-string p2, "setDeviceIdleMode PolicyHandler "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$sis;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p1}, Lcom/android/server/net/OpNetworkPolicy;->access$600(Lcom/android/server/net/OpNetworkPolicy;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$100()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$200()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$300()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "OpNetworkPolicy"

    const-string v0, "Update mAllowFGNetworkAccess to false"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/android/server/net/OpNetworkPolicy;->access$702(Z)Z

    iget-object p0, p0, Lcom/android/server/net/OpNetworkPolicy$sis;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p0}, Lcom/android/server/net/OpNetworkPolicy;->access$600(Lcom/android/server/net/OpNetworkPolicy;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->opUpdateRulesForRestrictPowerUL()V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
