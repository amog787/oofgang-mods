.class public Lcom/android/settings/wifi/dpp/AdbQrCode;
.super Lcom/android/settings/wifi/dpp/WifiQrCode;
.source "AdbQrCode.java"


# instance fields
.field private mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 41
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSecurity()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getPreSharedKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty password"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty service name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid security type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DPP format not supported for ADB QR code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAdbNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/AdbQrCode;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-object p0
.end method
