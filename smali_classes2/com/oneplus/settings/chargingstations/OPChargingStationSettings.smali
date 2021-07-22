.class public Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPChargingStationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private listener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 160
    sget-object v0, Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationSettings$Cz-Xbc1ZhpMClld2i7Uew9d3aTY;->INSTANCE:Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationSettings$Cz-Xbc1ZhpMClld2i7Uew9d3aTY;

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->listener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    return-void
.end method

.method static synthetic lambda$new$0(IZ)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPChargingStationSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getLocationUpdate()Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 163
    invoke-static {}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getLocationUpdate()Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;->onOPLocationUpdate()V

    :cond_0
    return-void
.end method

.method private updateMuteDescription(Landroidx/preference/Preference;)V
    .locals 8

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "op_charging_stations_mute_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "op_charging_stations_mute_eta"

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    if-nez v0, :cond_0

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    .line 120
    sget v0, Lcom/android/settings/R$string;->op_charing_station_mute_notifications_description:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 125
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v3

    .line 126
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 127
    sget v5, Lcom/android/settings/R$string;->op_charing_stations_mute_dynamic_time:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 128
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    .line 127
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPChargingStationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$xml;->op_charging_station_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 135
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_charging_station_mute_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    const-string v1, "op_charging_stations_mute_notification"

    invoke-static {v0, v1, p2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v0, "op_charging_stations_mute_eta"

    if-eqz p2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 140
    invoke-static {v1, v0, v2, v3}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    const-string v1, "type_mute"

    invoke-static {v0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    const-string v1, "type_undo"

    invoke-static {v0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "on"

    goto :goto_1

    :cond_1
    const-string p2, "off"

    :goto_1
    const-string v0, "C22AG9UUDL"

    const-string v1, "settings_action"

    const-string v2, "settings_notifications_muted"

    .line 150
    invoke-static {v0, v1, v2, p2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->updateMuteDescription(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 59
    move-object p2, p1

    check-cast p2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->hide()V

    const-string p2, "op_charging_station_mute_notification"

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreference;

    const-string v0, "op_charging_station_feature"

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 68
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-direct {p0, p2}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->updateMuteDescription(Landroidx/preference/Preference;)V

    .line 72
    :cond_1
    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    invoke-direct {v0, p1, v1, p2}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Landroidx/preference/SwitchPreference;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 76
    invoke-virtual {p2, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 78
    :cond_2
    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->listener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method
