.class public Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "OpenNetworkSelectPagePreferenceController.java"

# interfaces
.implements Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 63
    new-instance p1, Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    new-instance p2, Landroid/os/Handler;

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    .line 65
    new-instance p2, Lcom/android/settings/network/telephony/gsm/-$$Lambda$OpenNetworkSelectPagePreferenceController$owh_25qDasHSujAvHBJFE_as2xQ;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/gsm/-$$Lambda$OpenNetworkSelectPagePreferenceController$owh_25qDasHSujAvHBJFE_as2xQ;-><init>(Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->setPreferredNetworkModeChangedListener(Lcom/android/settings/network/PreferredNetworkModeContentObserver$OnPreferredNetworkModeChangedListener;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->updatePreference()V

    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->updateState(Landroidx/preference/Preference;)V

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

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getCurrentCarrierNameForDisplay(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->network_disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 124
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x62d

    .line 127
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->choose_network_title:I

    .line 128
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 130
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;
    .locals 1

    .line 138
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 139
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 140
    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 141
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p0
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

.method public synthetic lambda$new$0$OpenNetworkSelectPagePreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->lambda$new$0()V

    return-void
.end method

.method public onNetworkSelectModeChanged()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreferredNetworkModeObserver:Lcom/android/settings/network/PreferredNetworkModeContentObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/PreferredNetworkModeContentObserver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 106
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
