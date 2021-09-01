.class Lcom/android/settings/AllInOneTetherSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AllInOneTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AllInOneTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
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

    .line 457
    invoke-static {p1, p0}, Lcom/android/settings/AllInOneTetherSettings;->access$500(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 437
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 439
    invoke-static {p1}, Lcom/android/settingslib/TetherUtil;->isTetherAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "wifi_tether_network_name_2"

    .line 440
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_tether_network_password_2"

    .line 441
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_tether_auto_turn_off_2"

    .line 442
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_tether_network_ap_band_2"

    .line 443
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_tether_security_2"

    .line 444
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "settings_tether_all_in_one"

    .line 451
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
