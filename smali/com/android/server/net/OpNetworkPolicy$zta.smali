.class Lcom/android/server/net/OpNetworkPolicy$zta;
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

    iput-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$zta;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.test.compress.fg.restrict"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpNetworkPolicy"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$100()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$200()I

    move-result p2

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$300()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "restrict_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$400()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$500()Landroid/app/AlarmManager;

    move-result-object p1

    invoke-static {}, Lcom/android/server/net/OpNetworkPolicy;->access$400()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$zta;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p1}, Lcom/android/server/net/OpNetworkPolicy;->access$600(Lcom/android/server/net/OpNetworkPolicy;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p1

    iget-object p2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string p1, "OpNetworkPolicy"

    const-string v0, "Force update mAllowFGNetworkAccess to false"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/server/net/OpNetworkPolicy;->access$702(Z)Z

    iget-object p0, p0, Lcom/android/server/net/OpNetworkPolicy$zta;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p0}, Lcom/android/server/net/OpNetworkPolicy;->access$600(Lcom/android/server/net/OpNetworkPolicy;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->opUpdateRulesForRestrictPowerUL()V

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string p2, "restrict_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/net/OpNetworkPolicy$zta;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p1}, Lcom/android/server/net/OpNetworkPolicy;->access$600(Lcom/android/server/net/OpNetworkPolicy;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    const-string p2, "OpNetworkPolicy"

    const-string v1, "Force update mAllowFGNetworkAccess to true"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/net/OpNetworkPolicy;->access$702(Z)Z

    iget-object p0, p0, Lcom/android/server/net/OpNetworkPolicy$zta;->zta:Lcom/android/server/net/OpNetworkPolicy;

    invoke-static {p0}, Lcom/android/server/net/OpNetworkPolicy;->access$600(Lcom/android/server/net/OpNetworkPolicy;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->opUpdateRulesForRestrictPowerUL()V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
