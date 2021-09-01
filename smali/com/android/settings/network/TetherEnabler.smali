.class public Lcom/android/settings/network/TetherEnabler;
.super Ljava/lang/Object;
.source "TetherEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;,
        Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnableForTether:Z

.field private final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothTetheringStoppedByUser:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private final mEthernetRegex:Ljava/lang/String;

.field final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTetheringManager:Landroid/net/TetheringManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetherEnabler"

    const/4 v1, 0x3

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/TetherEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/widget/SwitchWidgetController;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Lcom/android/settings/network/TetherEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherEnabler$2;-><init>(Lcom/android/settings/network/TetherEnabler;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 129
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string p2, "connectivity"

    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p2, "tethering"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/TetheringManager;

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    const-string/jumbo p2, "wifi"

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p2, "user"

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mUserManager:Landroid/os/UserManager;

    .line 135
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 136
    iput-object p3, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const p2, 0x1040220

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mEthernetRegex:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverEnabled:Z

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    .line 141
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/TetherEnabler;I)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/network/TetherEnabler;->handleWifiApStateChanged(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/TetherEnabler;I)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/network/TetherEnabler;->handleBluetoothStateChanged(I)Z

    move-result p0

    return p0
.end method

.method private handleBluetoothStateChanged(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    return v1

    .line 334
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothEnableForTether:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->startTethering(I)V

    .line 341
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothEnableForTether:Z

    const/4 p0, 0x1

    return p0
.end method

.method private handleWifiApStateChanged(I)Z
    .locals 0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "TetherEnabler"

    const-string p1, "Wifi AP is failed!"

    .line 352
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isTethering(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSwitchCheckedInternal(Z)V
    .locals 1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 217
    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    return-void

    :catch_0
    const-string p0, "TetherEnabler"

    const-string p1, "failed to stop switch widget listener when set check internally"

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSwitchEnabled(Z)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverEnabled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mUserManager:Landroid/os/UserManager;

    .line 193
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 192
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;->onTetherStateUpdated(I)V

    .line 181
    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getTetheringState([Ljava/lang/String;)I
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object p1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 233
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    if-nez v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 235
    iget-object v3, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x4

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 243
    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, p1, v4

    .line 244
    array-length v6, v2

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v2, v7

    .line 245
    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 249
    :cond_4
    iget-object v6, p0, Lcom/android/settings/network/TetherEnabler;->mEthernetRegex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverEnabled:Z

    const/4 p1, 0x1

    .line 367
    invoke-direct {p0, p1}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v0, Lcom/android/settings/network/TetherEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherEnabler$1;-><init>(Lcom/android/settings/network/TetherEnabler;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mMainThreadHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 164
    new-instance v0, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;-><init>(Lcom/android/settings/network/TetherEnabler;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->updateState([Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->startTethering(I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    const/4 p1, 0x2

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    const/4 p1, 0x5

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    :goto_0
    return v1
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startTethering(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 290
    iput-boolean v0, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    :cond_0
    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0, v2}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result v2

    .line 293
    invoke-static {v2, p1}, Lcom/android/settings/network/TetherEnabler;->isTethering(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 299
    sget-boolean p1, Lcom/android/settings/network/TetherEnabler;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "TetherEnabler"

    const-string v0, "Turn on bluetooth first."

    .line 300
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothEnableForTether:Z

    .line 303
    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void

    .line 307
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stopTethering(I)V
    .locals 2

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result v1

    .line 276
    invoke-static {v1, p1}, Lcom/android/settings/network/TetherEnabler;->isTethering(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 277
    invoke-direct {p0, v1}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->updateState([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateState([Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result p1

    .line 199
    sget-boolean v0, Lcom/android/settings/network/TetherEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetherEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 202
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/network/TetherEnabler;->setSwitchCheckedInternal(Z)V

    .line 203
    invoke-direct {p0, v1}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;

    invoke-interface {v2, p1}, Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;->onTetherStateUpdated(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
