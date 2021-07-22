.class public Lcom/oneplus/security/firewall/NetworkRestrictService;
.super Landroid/app/Service;
.source "NetworkRestrictService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/firewall/NetworkRestrictService$FirewallRuleHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFirewallEnabled:Z

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/firewall/NetworkRestrictService;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/security/firewall/NetworkRestrictService;->applyFirewallRule(Z)V

    return-void
.end method

.method private applyFirewallRule(Z)V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/security/firewall/FirewallRule;->selectAllFirewallRules(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/oneplus/security/utils/Utils;->isCollectionEmpty(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "isWlan:"

    const-string v3, "NetworkRestrictService"

    if-eqz v1, :cond_0

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "-----listRules is empty ...."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-----listRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/security/firewall/FirewallRule;

    .line 187
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Lcom/oneplus/security/firewall/FirewallRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {v1}, Lcom/oneplus/security/firewall/FirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/oneplus/security/firewall/FirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    :goto_1
    move v2, v6

    goto :goto_2

    .line 196
    :cond_3
    invoke-virtual {v1}, Lcom/oneplus/security/firewall/FirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/oneplus/security/firewall/FirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 199
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-interface {v1, v6, v5, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v4, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v6, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-wide/32 v0, 0xea60

    .line 212
    invoke-direct {p0, v2, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictService;->sendHandlerMessage(IJ)V

    return-void
.end method

.method public static applyRules(Landroid/content/Context;)V
    .locals 2

    .line 151
    invoke-static {}, Lcom/oneplus/security/utils/Utils;->currentUserIsOwner()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/firewall/NetworkRestrictService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.oneplus.security.action.APPLY_RULE"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private saveFirewallRule(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    const-string v0, "app_package"

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 168
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "app_role_wifi"

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "app_role_mobile"

    .line 172
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 173
    new-instance v2, Lcom/oneplus/security/firewall/FirewallRule;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lcom/oneplus/security/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 174
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/oneplus/security/firewall/FirewallRule;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/security/firewall/FirewallRule;)Z

    return-void
.end method

.method private sendHandlerMessage(IJ)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 130
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    iput-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkRestrictService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictService$FirewallRuleHandler;

    iget-object v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/oneplus/security/firewall/NetworkRestrictService$FirewallRuleHandler;-><init>(Landroid/os/Looper;Lcom/oneplus/security/firewall/NetworkRestrictService;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "network_management"

    .line 95
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 98
    :try_start_0
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isFirewallEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mIsFirewallEnabled:Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFirewallEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mIsFirewallEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate mNetworkManagementService.isFirewallEnabled() error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 111
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oneplus.security.action.UPDATE_RULES"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lcom/oneplus/security/firewall/NetworkRestrictService;->saveFirewallRule(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.oneplus.security.action.APPLY_RULE"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0x7d0

    .line 121
    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/security/firewall/NetworkRestrictService;->sendHandlerMessage(IJ)V

    .line 124
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
