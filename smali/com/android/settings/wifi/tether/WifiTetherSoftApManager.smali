.class public Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;
.super Ljava/lang/Object;
.source "WifiTetherSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 33
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 34
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    return-object p0
.end method


# virtual methods
.method public registerSoftApCallback()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method public unRegisterSoftApCallback()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method
