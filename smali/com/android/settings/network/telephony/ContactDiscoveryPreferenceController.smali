.class public Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "ContactDiscoveryPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDiscoveryPref"

.field private static final UCE_URI:Landroid/net/Uri;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mImsManager:Landroid/telephony/ims/ImsManager;

.field private mUceSettingObserver:Landroid/database/ContentObserver;

.field public preference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "ims_rcs_uce_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->UCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mImsManager:Landroid/telephony/ims/ImsManager;

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getCarrierDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 143
    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 144
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private registerUceObserver()V
    .locals 3

    .line 113
    new-instance v0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController$1;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController$1;-><init>(Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mUceSettingObserver:Landroid/database/ContentObserver;

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->UCE_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mUceSettingObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private showContentDiscoveryDialog()V
    .locals 2

    .line 135
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iget-object v1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->preference:Landroidx/preference/Preference;

    .line 136
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->getCarrierDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->newInstance(ILjava/lang/CharSequence;)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {p0}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterUceObserver()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mUceSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->preference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "use_rcs_presence_bool"

    .line 101
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    return p1
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

.method public init(Landroidx/fragment/app/FragmentManager;ILandroidx/lifecycle/Lifecycle;)Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 67
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 68
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mImsManager:Landroid/telephony/ims/ImsManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->unregisterUceObserver()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->registerUceObserver()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->showContentDiscoveryDialog()V

    return v0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->mImsManager:Landroid/telephony/ims/ImsManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {p1, p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
