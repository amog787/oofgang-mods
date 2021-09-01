.class public Lcom/android/settings/dashboard/DashboardFragmentRegistry;
.super Ljava/lang/Object;
.source "DashboardFragmentRegistry.java"


# static fields
.field public static final CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    .line 70
    const-class v1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.homepage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/network/NetworkDashboardFragment;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.wireless"

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.connect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.device"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.battery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.display"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.sound"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.storage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.security"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.category.ia.account_detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.accounts"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/system/SystemDashboardFragment;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.system"

    .line 94
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.language"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.development"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.notifications"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/security/LockscreenDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.lockscreen"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.dnd"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/gestures/GestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.gestures"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/display/NightDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.night_display"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.privacy"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.enterprise_privacy"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.about_legal"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.my_device_info"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.battery_saver_settings"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/fuelgauge/SmartBatterySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.category.ia.smart_battery_settings"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    .line 125
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    sget-object v3, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
