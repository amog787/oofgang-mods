.class public abstract Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractZenModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;,
        Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field protected static mZenModeConfigWrapper:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;


# instance fields
.field final KEY:Ljava/lang/String;

.field protected final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field protected mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field protected mScreen:Landroidx/preference/PreferenceScreen;

.field protected mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 67
    :cond_0
    iput-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    const-string p2, "notification"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 71
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 73
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)J
    .locals 2

    .line 46
    invoke-static {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getNextAlarm(Landroid/content/Context;)J
    .locals 2

    const-string v0, "alarm"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 223
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    :cond_0
    return-void
.end method

.method protected getPolicy()Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method protected getZenDuration()I
    .locals 2

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_duration"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getZenMode()I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method
