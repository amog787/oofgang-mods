.class Lcom/android/settings/DisplaySettings$5;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1652
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 1687
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "screensaver"

    .line 1690
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$1000(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "auto_brightness"

    .line 1693
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    :cond_1
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->access$1100(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "doze_801"

    const-string v2, "doze"

    if-nez v0, :cond_2

    .line 1697
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1701
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1703
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    :goto_0
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "auto_rotate"

    .line 1707
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$1200(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "tap_to_wake"

    .line 1710
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$1300(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "camera_gesture"

    .line 1713
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$1400(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "camera_double_tap_power_gesture"

    .line 1716
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    :cond_7
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->access$1500(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "vr_display_pref"

    .line 1719
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v0, "lockguard_wallpaper_settings"

    .line 1723
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    invoke-static {}, Lcom/android/settings/DisplaySettings;->access$1600()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "oneplus_reading_mode"

    .line 1726
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    :cond_9
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportVideoEnhancer()Z

    move-result v0

    const-string/jumbo v1, "video_enhancer"

    if-nez v0, :cond_a

    .line 1730
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    :cond_a
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomBlinkLight()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const-string v0, "led_settings"

    .line 1735
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "notify_light_enable"

    .line 1736
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    :cond_c
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSupportTrueColorMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "op_true_color_mode"

    .line 1742
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    :cond_d
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMotionGraphicsCompensation()Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "graphics_dynamic_optimization"

    .line 1748
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "motion_graphics_compensation"

    .line 1749
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "graphics_enhancement_engine"

    .line 1751
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1754
    :cond_e
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    :goto_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "dark_ui_mode"

    .line 1758
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 1670
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1672
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1674
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenDisplayAdaption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1677
    sget p1, Lcom/android/settings/R$string;->oneplus_app_display_fullscreen_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1678
    sget p1, Lcom/android/settings/R$string;->display_settings:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1679
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 1657
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1661
    sget p1, Lcom/android/settings/R$xml;->display_settings:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1662
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
