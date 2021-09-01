.class public Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppBgOptimizeBridge.java"


# static fields
.field public static final FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final NOT_SHOWN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_SHOWN_PACKAGES:[Ljava/lang/String;

.field public static VZW_APPS_SHOWN_DISABLED:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field private final mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "com.oneplus.card"

    const-string v1, "com.oneplus.cloud"

    const-string v2, "com.oneplus.appupgrader"

    const-string v3, "net.oneplus.launcher"

    const-string v4, "com.oneplus.dirac.simplemanager"

    const-string v5, "com.oneplus.soundrecorder"

    const-string v6, "com.oneplus.sound.tuner"

    const-string v7, "com.oneplus.soundrecorder"

    const-string v8, "com.android.dialer"

    const-string v9, "com.oneplus.mms"

    .line 70
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->NOT_SHOWN_PACKAGES:[Ljava/lang/String;

    .line 78
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->NOT_SHOWN_LIST:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 122
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    const-string p2, "deviceidle"

    .line 54
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 59
    :try_start_0
    new-instance p2, Ljava/util/HashSet;

    iget-object p3, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {p3}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object p2, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->VZW_APPS_SHOWN_DISABLED:Ljava/util/HashSet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 61
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    :goto_0
    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    iget-object p2, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    .line 86
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object p0

    sput-object p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .locals 1

    .line 45
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-object v0
.end method

.method public static needShown(Ljava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)Z
    .locals 4

    .line 142
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMultiAppUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->NOT_SHOWN_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 149
    :cond_1
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->VZW_APPS_SHOWN_DISABLED:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 155
    :cond_2
    const-class v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    isneedShown : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1, p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 93
    iget-object p0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModesMap(I)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 96
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 97
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    .line 103
    new-instance p3, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    iget-object p0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {p3, p2, v0, p0}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Ljava/lang/String;II)V

    iput-object p3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
