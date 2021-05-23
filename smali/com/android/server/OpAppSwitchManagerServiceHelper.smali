.class public Lcom/android/server/OpAppSwitchManagerServiceHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/IOPAppSwitchManagerService;


# static fields
.field private static final DEBUG:Z

.field private static final OPOS_PKG:Ljava/lang/String; = "com.opos.ads"

.field private static final TAG:Ljava/lang/String; = "OpAppSwitchManagerServiceHelper"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAdsSettings()Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->getAdsSettings()Z

    move-result p0

    return p0
.end method

.method private isConnected()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-boolean v0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAppSwitchManagerServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const-string v0, "Please connect to the internet and try again."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method


# virtual methods
.method public getAppStartModeLocked(Ljava/lang/String;)I
    .locals 1

    const-string p0, "com.opos.ads"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ads is super wildcard : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAppSwitchManagerServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const p0, 0x72f58f

    return p0
.end method

.method public getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.opos.ads"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.INTERNET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/OpAppSwitchManagerServiceHelper;->getAdsSettings()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpAppSwitchManagerServiceHelper"

    const-string v1, "init : where magic happens"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->mCm:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/OpAppSwitchManagerServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchManagerService;->registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result p0

    return p0
.end method

.method public unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result p0

    return p0
.end method
