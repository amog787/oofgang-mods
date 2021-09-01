.class Lcom/oneplus/security/firewall/NetworkRestrictActivity$NetworkRestrictHandler;
.super Landroid/os/Handler;
.source "NetworkRestrictActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkRestrictHandler"
.end annotation


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/security/firewall/NetworkRestrictActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$NetworkRestrictHandler;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 79
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$NetworkRestrictHandler;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    if-nez p0, :cond_0

    return-void

    .line 83
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object p1

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Z

    move-result v0

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$100(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->refreshAppsNetworkRestrict(Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;ZLjava/util/concurrent/Executor;)V

    :goto_0
    return-void
.end method
