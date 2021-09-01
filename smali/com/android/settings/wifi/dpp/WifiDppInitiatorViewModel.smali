.class public Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WifiDppInitiatorViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;
    }
.end annotation


# instance fields
.field private mBandArray:[I

.field private mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWifiDppHandshaking:Z

.field private mStatusCode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTriedChannels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private mTriedSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedChannels:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;[I)[I
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mBandArray:[I

    return-object p1
.end method


# virtual methods
.method getBandArray()[I
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mBandArray:[I

    return-object p0
.end method

.method getEnrolleeSuccessNetworkId()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method getStatusCode()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method getTriedChannels()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedChannels:Landroid/util/SparseArray;

    return-object p0
.end method

.method getTriedSsid()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mTriedSsid:Ljava/lang/String;

    return-object p0
.end method

.method isWifiDppHandshaking()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    return p0
.end method

.method startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    .line 73
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 76
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$1;)V

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    .line 75
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/WifiManager;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    return-void
.end method

.method startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    .line 82
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 84
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$1;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/WifiManager;->startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    return-void
.end method
