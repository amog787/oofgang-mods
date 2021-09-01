.class public Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeleteSimProfilePreferenceController.java"


# instance fields
.field private mConfirmationDefaultOn:Z

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mRequestCode:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$bool;->config_sim_deletion_confirmation_default_on:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mConfirmationDefaultOn:Z

    return-void
.end method

.method private deleteSim()V
    .locals 3

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const-string v2, "android.telephony.euicc.extra.SUBSCRIPTION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget p0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mRequestCode:I

    invoke-virtual {v1, v0, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$handlePreferenceTreeClick$0()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->deleteSim()V

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

    .line 92
    iget-object p0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 69
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mConfirmationDefaultOn:Z

    const-string v2, "confirm_sim_deletion"

    .line 66
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    .line 72
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$8UWme3ssAKfh3UYXlgZtSK20hjk;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$8UWme3ssAKfh3UYXlgZtSK20hjk;-><init>(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->deleteSim()V

    :goto_0
    return v1

    :cond_2
    return v0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(ILandroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 51
    iput-object p2, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 53
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iput-object v0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 59
    :cond_1
    iput p3, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mRequestCode:I

    return-void
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

.method public synthetic lambda$handlePreferenceTreeClick$0$DeleteSimProfilePreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->lambda$handlePreferenceTreeClick$0()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
