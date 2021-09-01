.class public Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "EnterpriseDisclosurePreferenceController.java"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->getDisclosure()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

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

.method getDisclosure()Ljava/lang/CharSequence;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getDeviceOwnerDisclosure()Ljava/lang/CharSequence;

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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->getDisclosure()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
