.class Lcom/oneplus/security/firewall/NetworkRestrictService$FirewallRuleHandler;
.super Landroid/os/Handler;
.source "NetworkRestrictService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FirewallRuleHandler"
.end annotation


# instance fields
.field private final serviceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/security/firewall/NetworkRestrictService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/oneplus/security/firewall/NetworkRestrictService;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictService$FirewallRuleHandler;->serviceReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 60
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictService$FirewallRuleHandler;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/firewall/NetworkRestrictService;

    if-nez p0, :cond_0

    return-void

    .line 64
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "NetworkRestrictService"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "service.stopSelf()"

    .line 74
    invoke-static {v1, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "NetWork is not available"

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->currentNetWorkIsWlan(Landroid/content/Context;)Z

    move-result p1

    .line 71
    invoke-static {p0, p1}, Lcom/oneplus/security/firewall/NetworkRestrictService;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictService;Z)V

    :goto_0
    return-void
.end method
