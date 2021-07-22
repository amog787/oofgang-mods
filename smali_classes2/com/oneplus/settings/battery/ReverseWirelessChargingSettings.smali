.class public Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ReverseWirelessChargingSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static TAG:Ljava/lang/String; = "ReverseWirelessChargingSettings"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field final mRWCObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;-><init>(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mRWCObserver:Landroid/database/ContentObserver;

    .line 56
    new-instance v0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;-><init>(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mSwitch:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->getDisabledReason()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDisabledReason()Ljava/lang/String;
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reverse_wireless_disable_reason"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 90
    sget-object v0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable_reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 135
    sget p0, Lcom/android/settings/R$xml;->op_reverse_wireless_charging_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "batterymanager"

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mBatteryManager:Landroid/os/BatteryManager;

    const-string p1, "reverse_wireless_charging_switch"

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mSwitch:Landroidx/preference/SwitchPreference;

    .line 83
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mRWCObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 145
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, -0x2

    const-string v0, "reverse_wireless_charging_status"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 6

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reverse_wireless_charging_status"

    .line 101
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mRWCObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 100
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "reverse_wireless_disable_reason"

    .line 104
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mRWCObserver:Landroid/database/ContentObserver;

    .line 103
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mSwitch:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    const/16 v3, 0xf

    if-le v0, v3, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    .line 118
    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->mSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method
