.class public Lcom/android/settings/deviceinfo/BrandNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BrandNamePreferenceController.java"


# static fields
.field public static final KEY_BRAND_NAME:Ljava/lang/String; = "brand_name"


# instance fields
.field private isNeedEnable:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "brand_name"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    .line 26
    iput-object p1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBrandName()Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "phone"

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 49
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    goto :goto_0

    .line 57
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "brand_name"

    .line 38
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 41
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/BrandNamePreferenceController;->isNeedEnable:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 31
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
