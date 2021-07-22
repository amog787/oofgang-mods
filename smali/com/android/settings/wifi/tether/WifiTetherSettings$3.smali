.class Lcom/android/settings/wifi/tether/WifiTetherSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WifiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method

.method private isConnManagerEnable(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo p0, "wifi"

    .line 466
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const-string v0, "com.oneplus.wifiapsettings"

    .line 467
    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 461
    invoke-static {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$500(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 424
    invoke-static {p1}, Lcom/android/settingslib/TetherUtil;->isTetherAvailable(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v2, "wifi_tether_network_ap_band"

    const-string/jumbo v3, "wifi_tether_auto_turn_off"

    const-string/jumbo v4, "wifi_tether_network_password"

    const-string/jumbo v5, "wifi_tether_network_name"

    if-nez v1, :cond_0

    .line 425
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    const-string v6, "connected_device_manager"

    if-eqz v1, :cond_1

    .line 433
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "wifi_tether_security"

    .line 434
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "wifi_tether_custom_auto_turn_off"

    .line 439
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "wifi_tether_network_ap_band_single_select"

    .line 440
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$3;->isConnManagerEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 444
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo p0, "wifi_tether_settings_screen"

    .line 449
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "settings_tether_all_in_one"

    .line 455
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
