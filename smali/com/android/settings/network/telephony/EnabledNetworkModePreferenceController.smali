.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "EnabledNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EnabledNetworkMode"


# instance fields
.field private mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mIsPrimaryCardEnabled:Z

.field mIsPrimaryCardLWEnabled:Z

.field mIsSubsidyLockFeatureEnabled:Z

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

.field private mSubsidySettingsObserver:Landroid/database/ContentObserver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsPrimaryCardEnabled:Z

    .line 69
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsPrimaryCardLWEnabled:Z

    .line 70
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private synthetic lambda$init$0()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreference()V

    return-void
.end method

.method private loadPrimaryCardAndSubsidyLockValues()V
    .locals 3

    const-string v0, "EnabledNetworkMode"

    const-string v1, "loadPrimaryCardAndSubsidyLockValues"

    .line 871
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isPrimaryCardEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsPrimaryCardEnabled:Z

    .line 873
    invoke-static {}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isPrimaryCardLWEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsPrimaryCardLWEnabled:Z

    .line 874
    invoke-static {}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isSubsidyLockFeatureEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    .line 876
    sget-boolean v1, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    if-eqz v1, :cond_0

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPrimaryCardEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsPrimaryCardEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPrimaryCardLWEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsPrimaryCardLWEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSubsidyLockFeatureEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
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

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 126
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 79
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    move p0, v0

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "hide_carrier_network_settings_bool"

    .line 84
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_preferred_network_type_bool"

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "world_phone_bool"

    .line 89
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    :goto_2
    return v0
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

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 2

    .line 160
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 161
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 162
    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 163
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 164
    new-instance p2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-direct {p2, v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    .line 166
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    if-nez p2, :cond_0

    .line 167
    new-instance p2, Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    new-instance v0, Landroid/os/Handler;

    .line 168
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, v0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    .line 169
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$AqObIXCHqum9ECYzo0tKReVeOJY;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$AqObIXCHqum9ECYzo0tKReVeOJY;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->setPreferredNetworkModeChangedListener(Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;)V

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    if-nez p2, :cond_1

    .line 173
    new-instance p2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    .line 186
    :cond_1
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

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

.method public synthetic lambda$init$0$EnabledNetworkModePreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->lambda$init$0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 146
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 147
    check-cast p1, Landroidx/preference/ListPreference;

    .line 149
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 150
    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v1

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeBitmask(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    .line 152
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$300(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$400(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->loadPrimaryCardAndSubsidyLockValues()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->register(Landroid/content/Context;I)V

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subsidy_status"

    .line 107
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    .line 106
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->unregister(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 133
    check-cast p1, Landroidx/preference/ListPreference;

    .line 135
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceEntries()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$100(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$200(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$300(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->access$400(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
