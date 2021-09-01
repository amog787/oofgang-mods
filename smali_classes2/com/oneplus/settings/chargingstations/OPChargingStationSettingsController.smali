.class public Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;
.super Ljava/lang/Object;
.source "OPChargingStationSettingsController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeatureObserver:Landroid/database/ContentObserver;

.field private final mFeatureUri:Landroid/net/Uri;

.field private mMuteNotifications:Landroidx/preference/SwitchPreference;

.field private final mMuteUri:Landroid/net/Uri;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Landroidx/preference/SwitchPreference;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mObserver:Landroid/database/ContentObserver;

    .line 84
    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 26
    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 28
    iput-object p3, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    .line 30
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    const-string p2, "op_charging_stations_feature_on"

    const/4 p3, 0x0

    .line 31
    invoke-static {p1, p2, p3}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "op_charging_stations_mute_notification"

    .line 32
    invoke-static {p1, v1, p3}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 33
    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 34
    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    if-ne v0, v3, :cond_1

    if-ne p1, v3, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 35
    iget-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 37
    iget-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 38
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteUri:Landroid/net/Uri;

    .line 39
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureUri:Landroid/net/Uri;

    .line 40
    iget-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    iget-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Lcom/android/settings/widget/SwitchWidgetController;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    :cond_0
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    const-string v1, "op_charging_stations_feature_on"

    invoke-static {v0, v1, p1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    const-string v1, "op_charging_stations_mute_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 49
    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string v1, "type_enabled"

    goto :goto_0

    :cond_1
    const-string v1, "type_undo"

    :goto_0
    invoke-static {v0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "on"

    goto :goto_1

    :cond_2
    const-string v0, "off"

    :goto_1
    const-string v1, "C22AG9UUDL"

    const-string v2, "settings_action"

    const-string v4, "settings_feature_enabled"

    .line 51
    invoke-static {v1, v2, v4, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 56
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    const-string p1, "op_charging_station_beacon_name"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putStringSystemProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return v3
.end method
