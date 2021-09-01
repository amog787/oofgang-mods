.class public Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;
.super Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;
.source "WifiDppEnrolleeActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;-><init>()V

    return-void
.end method

.method private showQrCodeScannerFragment(Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_scanner_fragment"

    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 83
    sget p1, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63c

    return p0
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7c1bddca

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    const-string p1, "WifiDppEnrolleeActivity"

    const-string v0, "Launch with an invalid action"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_4
    const-string v0, "ssid"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->showQrCodeScannerFragment(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    return-void
.end method
