.class Lyou/zta/zta/zta/rtg/tsu$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/rtg/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/zta/zta/rtg/tsu$zta$zta;
    }
.end annotation


# static fields
.field private static final igw:Ljava/lang/String; = "persist.sys.gps.lab_disable_loc_on"


# instance fields
.field final synthetic bio:Lyou/zta/zta/zta/rtg/tsu;

.field private cno:Z

.field private kth:Z

.field private rtg:Z

.field private sis:Landroid/location/LocationManager;

.field private ssp:I

.field private tsu:Lyou/zta/zta/zta/rtg/tsu$zta$zta;

.field private you:Landroid/net/wifi/WifiManager;

.field private zta:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lyou/zta/zta/zta/rtg/tsu;)V
    .locals 3

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->bio:Lyou/zta/zta/zta/rtg/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->rtg:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->cno:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->kth:Z

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu;->zta(Lyou/zta/zta/zta/rtg/tsu;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->you:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu;->zta(Lyou/zta/zta/zta/rtg/tsu;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->zta:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu;->zta(Lyou/zta/zta/zta/rtg/tsu;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->sis:Landroid/location/LocationManager;

    new-instance p1, Lyou/zta/zta/zta/rtg/tsu$zta$zta;

    invoke-direct {p1, p0}, Lyou/zta/zta/zta/rtg/tsu$zta$zta;-><init>(Lyou/zta/zta/zta/rtg/tsu$zta;)V

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->tsu:Lyou/zta/zta/zta/rtg/tsu$zta$zta;

    const-string p1, "persist.sys.gps.lab_disable_loc_on"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->kth:Z

    return-void
.end method

.method static synthetic bio(Lyou/zta/zta/zta/rtg/tsu$zta;)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/tsu$zta;->igw()V

    return-void
.end method

.method static synthetic cno(Lyou/zta/zta/zta/rtg/tsu$zta;)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/tsu$zta;->qbh()V

    return-void
.end method

.method private dma()V
    .locals 3

    const-string v0, "OpLocMngrSrv"

    const-string v1, "save current wifi status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->bio:Lyou/zta/zta/zta/rtg/tsu;

    invoke-static {v0}, Lyou/zta/zta/zta/rtg/tsu;->zta(Lyou/zta/zta/zta/rtg/tsu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->ssp:I

    return-void
.end method

.method private gck()V
    .locals 2

    const-string v0, "OpLocMngrSrv"

    const-string v1, "save current gps status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->sis:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->cno:Z

    return-void
.end method

.method private igw()V
    .locals 2

    iget-boolean v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->cno:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "restore gps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->sis:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method static synthetic kth(Lyou/zta/zta/zta/rtg/tsu$zta;)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/tsu$zta;->wtn()V

    return-void
.end method

.method private oif()V
    .locals 2

    iget v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->ssp:I

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "turn on wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->you:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method private qbh()V
    .locals 2

    iget-boolean v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->cno:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "turn on gps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->sis:Landroid/location/LocationManager;

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method static synthetic rtg(Lyou/zta/zta/zta/rtg/tsu$zta;)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/tsu$zta;->gck()V

    return-void
.end method

.method static synthetic sis(Lyou/zta/zta/zta/rtg/tsu$zta;Z)Z
    .locals 0

    iput-boolean p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->rtg:Z

    return p1
.end method

.method static synthetic ssp(Lyou/zta/zta/zta/rtg/tsu$zta;)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/tsu$zta;->oif()V

    return-void
.end method

.method static synthetic tsu(Lyou/zta/zta/zta/rtg/tsu$zta;)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/tsu$zta;->dma()V

    return-void
.end method

.method private wtn()V
    .locals 2

    iget v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->ssp:I

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "restore wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->you:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method static synthetic you(Lyou/zta/zta/zta/rtg/tsu$zta;)Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->rtg:Z

    return p0
.end method

.method static synthetic zta(Lyou/zta/zta/zta/rtg/tsu$zta;)Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->kth:Z

    return p0
.end method


# virtual methods
.method public ywr()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->zta:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta;->tsu:Lyou/zta/zta/zta/rtg/tsu$zta$zta;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    const-string p0, "OpLocMngrSrv"

    const-string v0, "OP_FEATURE_OPERATOR_GPS_E911 is not set"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
