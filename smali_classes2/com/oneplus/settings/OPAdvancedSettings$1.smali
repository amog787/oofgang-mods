.class Lcom/oneplus/settings/OPAdvancedSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 58
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

    .line 76
    invoke-static {p1, p0, p0}, Lcom/oneplus/settings/OPAdvancedSettings;->access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/oneplus/settings/OPAdvancedSettings;)Ljava/util/List;

    move-result-object p0

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

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance p2, Lcom/oneplus/settings/controllers/OPNotchDisplayGuidePreferenceController;

    const-string v0, "oneplus_notch_display_guide"

    invoke-direct {p2, p1, v0}, Lcom/oneplus/settings/controllers/OPNotchDisplayGuidePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 65
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 66
    sget v0, Lcom/android/settings/R$string;->oneplus_front_camera_display_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "oneplus_front_camera_display_guide"

    .line 67
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 68
    sget v0, Lcom/android/settings/R$string;->op_display_advanced_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 69
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
