.class public Lcom/android/settings/development/WirelessDebuggingEnabler;
.super Ljava/lang/Object;
.source "WirelessDebuggingEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;

.field private mListeningToOnSwitchChange:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 56
    iget-object p2, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 58
    iput-object p3, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListener:Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;

    if-eqz p4, :cond_0

    .line 60
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    new-instance p1, Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    iget-object p2, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/WirelessDebuggingEnabler$1;-><init>(Lcom/android/settings/development/WirelessDebuggingEnabler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/WirelessDebuggingEnabler;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->isAdbWifiEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/development/WirelessDebuggingEnabler;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/development/WirelessDebuggingEnabler;->onWirelessDebuggingEnabled(Z)V

    return-void
.end method

.method private isAdbWifiEnabled()Z
    .locals 2

    .line 74
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "adb_wifi_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onWirelessDebuggingEnabled(Z)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 113
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListener:Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;

    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0, p1}, Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;->onEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->isAdbWifiEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->onWirelessDebuggingEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_wifi_enabled"

    .line 98
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 97
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->adb_wireless_no_network_msg:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 131
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return p1

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/development/WirelessDebuggingEnabler;->writeAdbWifiSetting(Z)V

    return v0
.end method

.method public teardownSwitchController()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    return-void
.end method

.method protected writeAdbWifiSetting(Z)V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_wifi_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
