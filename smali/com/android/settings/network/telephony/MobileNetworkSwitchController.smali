.class public Lcom/android/settings/network/telephony/MobileNetworkSwitchController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MobileNetworkSwitchController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileNetworkSwitchCtrl"


# instance fields
.field private mCallState:I

.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mPhoneId:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSubId:I

.field private mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    .line 59
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 60
    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method private getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    .line 173
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 2

    .line 95
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mPhoneId:I

    invoke-static {p1}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->getUiccCardProvisioningStatus(I)I

    move-result p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPreference: mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiccStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileNetworkSwitchCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    .line 100
    invoke-virtual {p1, p0, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionEnabled(IZ)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private registerPhoneStateListener()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 157
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object p0

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_0
    return-void
.end method

.method private update()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 114
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    if-ne v2, v3, :cond_1

    .line 115
    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 120
    :cond_2
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 121
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    const/4 v2, 0x0

    if-nez v1, :cond_6

    if-eqz v0, :cond_3

    goto :goto_1

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_4

    .line 133
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 136
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mPhoneId:I

    invoke-static {v0}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->getUiccCardProvisioningStatus(I)I

    move-result v0

    .line 137
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v0, v1, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :goto_0
    return-void

    .line 122
    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: disable switchbar, isEcbmEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", callstate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileNetworkSwitchCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 88
    sget v0, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 89
    sget v0, Lcom/android/settings/R$string;->mobile_network_use_sim_on:I

    sget v1, Lcom/android/settings/R$string;->mobile_network_use_sim_off:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$8gHlqcim1vAQNuqU6a1SRLRJ8DY;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$8gHlqcim1vAQNuqU6a1SRLRJ8DY;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 0

    .line 66
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 67
    iput p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    .line 68
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mPhoneId:I

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

.method public synthetic lambda$displayPreference$0$MobileNetworkSwitchController(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->lambda$displayPreference$0(Lcom/android/settings/widget/ToggleSwitch;Z)Z

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->unRegisterPhoneStateListener()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->registerPhoneStateListener()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
