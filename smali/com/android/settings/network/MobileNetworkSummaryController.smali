.class public Lcom/android/settings/network/MobileNetworkSummaryController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobileNetworkSummaryController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Lcom/android/settings/widget/AddPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 81
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 82
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz p2, :cond_0

    .line 84
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 85
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$0(Landroidx/preference/Preference;)Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 156
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 155
    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 157
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->startAddSimFlow()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$update$1(Lcom/android/settings/widget/AddPreference;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 170
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 171
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->startAddSimFlow()V

    return-void
.end method

.method private synthetic lambda$update$2(Ljava/util/List;Landroidx/preference/Preference;)Z
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 178
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    const/4 p2, 0x0

    .line 179
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 180
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 181
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 182
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionEnabled(IZ)Z

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string p2, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v2
.end method

.method private startAddSimFlow()V
    .locals 3

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.euicc.extra.FORCE_PROVISION"

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AddPreference;->setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v1}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v1, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$_8dM0TxjKQt1kvFsc--7Sm1R3eY;

    invoke-direct {v1, p0}, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$_8dM0TxjKQt1kvFsc--7Sm1R3eY;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v3}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/AddPreference;->setAddWidgetEnabled(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v3, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$Av_fwhcj2R6kcfzdoFvt6boCsjs;

    invoke-direct {v3, p0}, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$Av_fwhcj2R6kcfzdoFvt6boCsjs;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/AddPreference;->setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V

    .line 175
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 176
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v2, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$SLhrBw_W4Z0fRuohpDblxc8vI6I;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$SLhrBw_W4Z0fRuohpDblxc8vI6I;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const-class v0, Lcom/android/settings/network/MobileNetworkListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AddPreference;

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "mobile_network_list"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->mobile_network_summary_add_a_network:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 118
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 119
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v4}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 120
    invoke-static {v4}, Lcom/android/settings/network/SubscriptionUtil;->showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->mobile_network_tap_to_activate:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 122
    invoke-static {v1}, Lcom/android/settings/network/SubscriptionUtil;->getDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 121
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 127
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->mobile_network_summary_count:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 128
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$update$0$MobileNetworkSummaryController(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$update$1$MobileNetworkSummaryController(Lcom/android/settings/widget/AddPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$1(Lcom/android/settings/widget/AddPreference;)V

    return-void
.end method

.method public synthetic lambda$update$2$MobileNetworkSummaryController(Ljava/util/List;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$2(Ljava/util/List;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 218
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method
