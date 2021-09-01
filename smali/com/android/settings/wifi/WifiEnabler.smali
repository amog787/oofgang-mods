.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settings/wifi/tether/utils/TetherUtils$OnDialogConfirmCallback;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    const-string v0, "connectivity"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 51
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance p4, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {p4, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    .line 89
    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 90
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string/jumbo p2, "wifi"

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchController()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 156
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 147
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    const/4 p1, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0x8b

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_in_airplane_mode:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return v0

    :cond_1
    if-eqz p1, :cond_3

    .line 199
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isTetheringOpen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->openUstWifi(Landroid/content/Context;Lcom/android/settings/wifi/tether/utils/TetherUtils$OnDialogConfirmCallback;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v4, 0x8b

    new-array v5, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v4, 0x8a

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 207
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 212
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 213
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_error:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    return v1
.end method

.method public pause()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2

    .line 121
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    return-void
.end method

.method public setupSwitchController()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 104
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    return-void
.end method

.method public teardownSwitchController()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    return-void
.end method
