.class public Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/development/OemUnlockDialogHost;
.implements Lcom/android/settings/development/AdbDialogHost;
.implements Lcom/android/settings/development/AdbClearKeysDialogHost;
.implements Lcom/android/settings/development/LogPersistDialogHost;
.implements Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;
.implements Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mOemController:Lcom/android/settings/development/OemUnlockPreferenceController;


# instance fields
.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAvailable:Z

.field private mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mPreferenceControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 686
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;

    sget v1, Lcom/android/settings/R$xml;->development_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;-><init>(I)V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_debugging_features"

    .line 210
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 131
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 195
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 0

    .line 97
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;",
            "Lcom/android/settings/development/BluetoothA2dpConfigStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    new-instance v1, Lcom/android/settings/development/MemoryUsagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v1, Lcom/android/settings/development/BugReportPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v1, Lcom/android/settings/development/BugReportHandlerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportHandlerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v1, Lcom/android/settings/development/SystemServerHeapDumpPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v1, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v1, Lcom/oneplus/settings/development/OPGetLogsPreferenceController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/development/OPGetLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v1, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v1, Lcom/oneplus/settings/development/OPWirlessAdbDebuggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/development/OPWirlessAdbDebuggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v1, Lcom/oneplus/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance p1, Lcom/android/settings/development/FileEncryptionPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/FileEncryptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance p1, Lcom/android/settings/development/WebViewAppPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WebViewAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance p1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance p1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance p1, Lcom/android/settings/development/SelectDSUPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SelectDSUPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance p1, Lcom/android/settings/development/AdbPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/AdbPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance p1, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance p1, Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance p1, Lcom/android/settings/development/AdbAuthorizationTimeoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AdbAuthorizationTimeoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance p1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance p1, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance p1, Lcom/android/settings/development/MockLocationAppPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/MockLocationAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance p1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance p1, Lcom/android/settings/development/SelectDebugAppPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/SelectDebugAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance p1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance p1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance p1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance p1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance p1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance p1, Lcom/android/settings/development/ArtVerifierPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ArtVerifierPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance p1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 568
    new-instance p1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    new-instance p1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance p1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance p1, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance p1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance p1, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance p1, Lcom/android/settings/development/WifiEnhancedMacRandomizationPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiEnhancedMacRandomizationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance p1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance p1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance p1, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance p1, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance p1, Lcom/oneplus/settings/development/BluetoothHidDeviceProfilePreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/development/BluetoothHidDeviceProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance p1, Lcom/android/settings/development/BluetoothGabeldorschePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothGabeldorschePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance p1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance p1, Lcom/android/settings/development/BluetoothMapVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothMapVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance p1, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance p1, Lcom/android/settings/development/EnhancedConnectivityPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnhancedConnectivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance p1, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance p1, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance p1, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance p1, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance p1, Lcom/android/settings/development/ShowRefreshRatePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowRefreshRatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance p1, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance p1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance p1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    new-instance p1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance p1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance p1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance p1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance p1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance p1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance p1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance p1, Lcom/android/settings/development/ForceDarkPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceDarkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance p1, Lcom/android/settings/development/EnableBlursPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableBlursPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance p1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance p1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance p1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance p1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance p1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance p1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance p1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance p1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance p1, Lcom/android/settings/development/CachedAppsFreezerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CachedAppsFreezerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance p1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance p1, Lcom/android/settings/development/AppsNotRespondingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance p1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance p1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance p1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance p1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance p1, Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DesktopModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance p1, Lcom/android/settings/development/SizeCompatFreeformPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SizeCompatFreeformPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance p1, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance p1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "running_apps"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "demo_mode"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "quick_settings_tiles"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "feature_flags_dashboard"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "default_usb_configuration"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "density"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "background_check"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "inactive_apps"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance p1, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance p1, Lcom/android/settings/development/autofill/AutofillResetOptionsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/autofill/AutofillResetOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4, p3}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothSampleRateDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothSampleRateDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothBitPerSampleDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothBitPerSampleDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothChannelModeDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothChannelModeDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothHDAudioPreferenceController;

    invoke-direct {p1, p0, p2, p4, p3}, Lcom/android/settings/development/bluetooth/BluetoothHDAudioPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance p1, Lcom/android/settings/development/storage/SharedDataPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/storage/SharedDataPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance p1, Lcom/android/settings/development/OverlaySettingsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/OverlaySettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private disableDeveloperOptions()V
    .locals 3

    .line 463
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 467
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->blockPokes()V

    .line 469
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 470
    instance-of v2, v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v2, :cond_1

    .line 471
    check-cast v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    .line 472
    invoke-virtual {v1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    goto :goto_0

    .line 475
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->unblockPokes()V

    .line 476
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    return-void
.end method

.method private enableDeveloperOptions()V
    .locals 2

    .line 451
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 455
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 456
    instance-of v1, v0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v1, :cond_1

    .line 457
    check-cast v0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .line 436
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 440
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 446
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    const/4 p0, 0x0

    return-object p0

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    .line 424
    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object p1
.end method

.method getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DevSettingsDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x27

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 415
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$xml;->placeholder_prefs:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$xml;->development_settings:I

    :goto_0
    return p0
.end method

.method protected isParalleledControllers()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onA2dpHwDialogConfirmed()V
    .locals 1

    .line 381
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onA2dpHwDialogConfirmed()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 240
    new-instance v0, Lcom/android/settings/development/DevelopmentSwitchBarController;

    iget-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/settings/development/DevelopmentSwitchBarController;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 243
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result p1

    if-nez p1, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->development_settings_not_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 235
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 390
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    .line 393
    check-cast v2, Lcom/android/settings/development/OnActivityResultListener;

    .line 394
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 399
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onAdbClearKeysDialogConfirmed()V
    .locals 1

    .line 360
    const-class v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->onClearAdbKeysConfirmed()V

    return-void
.end method

.method public onBluetoothCodecChanged()V
    .locals 2

    .line 663
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 664
    instance-of v1, v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;

    if-nez v1, :cond_0

    .line 666
    check-cast v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    .line 667
    invoke-virtual {v0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->onBluetoothCodecUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBluetoothHDAudioEnabled(Z)V
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothHDAudioEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevSettingsDashboard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 676
    instance-of v1, v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    if-eqz v1, :cond_0

    .line 677
    check-cast v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->onHDAudioEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 256
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->registerReceivers()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 258
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DevSettingsDashboard"

    const-string v2, "bluetooth on"

    .line 261
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 263
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 268
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "debug_misc_category"

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "demo_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 273
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 4

    .line 278
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->unregisterReceivers()V

    .line 281
    sget-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mOemController:Lcom/android/settings/development/OemUnlockPreferenceController;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->unBindSimlockConnection()V

    .line 285
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 289
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eq v1, v3, :cond_1

    .line 290
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 296
    :cond_2
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/SystemProperties;->removeChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method onDisableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    return-void
.end method

.method onDisableDevelopmentOptionsRejected()V
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    .line 367
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogConfirmed()V

    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 1

    .line 374
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogRejected()V

    return-void
.end method

.method public onEnableAdbDialogConfirmed()V
    .locals 1

    .line 345
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AdbPreferenceController;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogConfirmed()V

    return-void
.end method

.method public onEnableAdbDialogDismissed()V
    .locals 1

    .line 353
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AdbPreferenceController;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogDismissed()V

    return-void
.end method

.method onEnableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 480
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    return-void
.end method

.method onEnableDevelopmentOptionsRejected()V
    .locals 1

    .line 485
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onOemUnlockDialogConfirmed()V
    .locals 1

    .line 331
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockConfirmed()V

    return-void
.end method

.method public onOemUnlockDialogDismissed()V
    .locals 1

    .line 338
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockDismissed()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eq p2, p1, :cond_4

    if-eqz p2, :cond_1

    .line 313
    invoke-static {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_1

    .line 315
    :cond_1
    const-class p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->isDefaultValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_1

    .line 321
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    :cond_4
    :goto_1
    return-void
.end method
