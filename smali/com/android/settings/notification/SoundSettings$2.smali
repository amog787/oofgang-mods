.class Lcom/android/settings/notification/SoundSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 398
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

    .line 416
    invoke-static {p1, p0, p0}, Lcom/android/settings/notification/SoundSettings;->access$000(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    move-result-object p0

    .line 426
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUssOnly()Z

    move-result p1

    const-string v0, "message_ringtone"

    if-nez p1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGoogleCommSuit()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 431
    invoke-static {}, Lcom/android/settings/notification/SoundSettings;->access$100()Z

    move-result p1

    if-nez p1, :cond_2

    .line 432
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 439
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
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

    .line 401
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance p2, Lcom/oneplus/settings/controllers/OPDolbyAtmosControlPreferenceController;

    invoke-direct {p2, p1}, Lcom/oneplus/settings/controllers/OPDolbyAtmosControlPreferenceController;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 405
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 406
    sget v0, Lcom/android/settings/R$string;->oneplus_dirac_audio_tuner:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "dirac_audio_tuner"

    .line 407
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 408
    sget v0, Lcom/android/settings/R$string;->oneplus_sound_and_vibrate:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 409
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
