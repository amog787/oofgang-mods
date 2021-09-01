.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppQrCodeScannerFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
.implements Landroid/net/wifi/WifiManager$ActionListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;,
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
    }
.end annotation


# instance fields
.field private mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

.field private mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

.field private mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mErrorMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConfiguratorMode:Z

.field private mLatestStatusCode:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

.field private mSsid:Ljava/lang/String;

.field private mTextureView:Landroid/view/TextureView;

.field private mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 334
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 114
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 344
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    .line 114
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 346
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    .line 347
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/qrcode/QrDecorateView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->notifyUserForQrCodeRecognition()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method private destroyCamera()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method private handleWifiDpp()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleZxingWifiFormat()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 520
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 522
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    .line 535
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isReachableWifiNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 245
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    .line 248
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 251
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 252
    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isWifiDppHandshaking()Z
    .locals 1

    .line 695
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 1

    .line 277
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onEnrolleeSuccess(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 1

    .line 287
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Easy connect enrollee callback onFailure "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance p2, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->onFailure(I)V

    return-void
.end method

.method private notifyUserForQrCodeRecognition()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V

    return-void
.end method

.method private restartCamera()V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-nez v0, :cond_0

    const-string p0, "WifiDppQrCodeScanner"

    const-string v0, "mCamera is not available for restarting camera"

    .line 705
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 709
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->isDecodeTaskAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 718
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 715
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTexture is not ready for restarting camera"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private showErrorMessage(I)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 554
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 553
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 555
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private showErrorMessageAndRestartCamera(I)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 560
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 559
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 561
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 562
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 1

    .line 670
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 672
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;)V

    return-void
.end method

.method private updateEnrolleeSummary()V
    .locals 4

    .line 722
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_dpp_connecting:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 727
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code_join_unknown_network:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code_join_network:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mSsid:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 731
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;
    .locals 1

    .line 465
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x63b

    return p0

    :cond_0
    const/16 p0, 0x63c

    return p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 460
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 0

    .line 527
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->destroyCamera()V

    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 3

    .line 497
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x10944

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x28a715

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "DPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 503
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->handleZxingWifiFormat()V

    goto :goto_2

    .line 499
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->handleWifiDpp()V

    :goto_2
    return-void
.end method

.method protected isDecodeTaskAlive()Z
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->isDecodeTaskAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFooterAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 476
    :try_start_0
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 484
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz v1, :cond_0

    const-string v1, "WIFI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 485
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 478
    :catch_0
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessage(I)V

    return v0
.end method

.method public synthetic lambda$onCreate$0$WifiDppQrCodeScannerFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->lambda$onCreate$0(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$WifiDppQrCodeScannerFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->lambda$onCreate$1(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 352
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 355
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 354
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 358
    iget-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_dpp_add_device_to_network:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 367
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 369
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    return-void
.end method

.method public onConnectedChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 262
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    if-eqz p1, :cond_0

    const-string v0, "key_is_configurator_mode"

    .line 266
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v0, "key_latest_error_code"

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    const-string v0, "key_wifi_configuration"

    .line 268
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 272
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 274
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getEnrolleeSuccessNetworkId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$pDAVP_ZnST79iW0FN3k5nED9adM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$pDAVP_ZnST79iW0FN3k5nED9adM;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 284
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 v0, 0x1

    .line 432
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 434
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 383
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    .line 384
    sget p0, Lcom/android/settings/R$layout;->op_setup_wifi_dpp_qrcode_scanner_fragment:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->op_wifi_dpp_qrcode_scanner_fragment:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mScanWifiDppSuccessListener:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    .line 376
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi connect onFailure reason - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget p1, Lcom/android/settings/R$string;->wifi_dpp_check_connection_try_again:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    .line 303
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 308
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->restartCamera()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 567
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    const-string v1, "key_is_configurator_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 568
    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mLatestStatusCode:I

    const-string v1, "key_latest_error_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "key_wifi_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 571
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 677
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 678
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mEnrolleeWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v2, "wifi_configuration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, -0x1

    .line 682
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 449
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->destroyCamera()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 395
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 397
    sget p2, Lcom/android/settings/R$id;->preview_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    .line 398
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 400
    sget p2, Lcom/android/settings/R$id;->decorate_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/qrcode/QrDecorateView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    .line 403
    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    goto :goto_1

    .line 406
    :cond_0
    sget p2, Lcom/android/settings/R$id;->indeterminate_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 407
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isWifiDppHandshaking()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    :goto_1
    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mIsConfiguratorMode:Z

    if-eqz p2, :cond_3

    .line 412
    sget p2, Lcom/android/settings/R$string;->wifi_dpp_add_device_to_network:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;

    .line 415
    invoke-interface {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p2

    .line 416
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->wifi_dpp_center_qr_code:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 420
    invoke-virtual {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    .line 419
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 417
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 422
    :cond_3
    sget p2, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 424
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->updateEnrolleeSummary()V

    .line 427
    :goto_2
    sget p2, Lcom/android/settings/R$id;->error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
