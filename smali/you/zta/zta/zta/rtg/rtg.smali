.class public Lyou/zta/zta/zta/rtg/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/location/IOpLocationMdm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/zta/zta/rtg/rtg$you;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field private static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static bud:Lnet/oneplus/odm/OpDeviceManagerInjector; = null

.field private static c:Z = false

.field private static cgv:I = 0x0

.field private static final cjf:Z

.field private static d:Z = false

.field public static final ear:Ljava/lang/String; = "F6X2WLDK2K"

.field public static final fto:Ljava/lang/String; = "gnss_location_status"

.field public static final hmo:Ljava/lang/String; = "gnss_provider_abnormal"

.field public static final ire:Ljava/lang/String; = "gnss_switch_abnormal"

.field private static irq:I = 0x0

.field private static final ivd:I = 0x1388

.field private static les:I = 0x0

.field public static final lqr:Ljava/lang/String; = "gnss_provider_ttff"

.field private static final obl:Ljava/lang/String; = "OpLocationMdm"

.field private static oxb:Z = false

.field private static final qeg:I = 0x2

.field private static final vdw:I = 0x1

.field public static final veq:Ljava/lang/String; = "gnss_request_status"

.field private static vju:Landroid/content/Context;


# instance fields
.field private bio:I

.field private bvj:I

.field private cno:I

.field private dma:I

.field private gck:I

.field private gwm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lyou/zta/zta/zta/rtg/rtg$you;",
            ">;"
        }
    .end annotation
.end field

.field private ibl:Ljava/lang/String;

.field private igw:I

.field private kth:I

.field private oif:J

.field private qbh:J

.field private rtg:I

.field private sis:I

.field private ssp:I

.field private tsu:I

.field private ugm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lyou/zta/zta/zta/rtg/rtg$you;",
            ">;"
        }
    .end annotation
.end field

.field private vdb:Landroid/location/LocationManager;

.field private wtn:I

.field private you:I

.field private ywr:I

.field private zgw:Landroid/os/Handler;

.field private zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->oxb:Z

    const-string v0, "OpLocationMdm"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    const/4 v0, -0x2

    sput v0, Lyou/zta/zta/zta/rtg/rtg;->cgv:I

    const/4 v0, 0x0

    sput v0, Lyou/zta/zta/zta/rtg/rtg;->les:I

    const/4 v0, -0x1

    sput v0, Lyou/zta/zta/zta/rtg/rtg;->irq:I

    const-string v0, "Defult"

    sput-object v0, Lyou/zta/zta/zta/rtg/rtg;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/rtg/rtg;->b:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->c:Z

    sput-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    const/4 v1, 0x1

    iput v1, p0, Lyou/zta/zta/zta/rtg/rtg;->you:I

    const/4 v2, 0x2

    iput v2, p0, Lyou/zta/zta/zta/rtg/rtg;->sis:I

    const/4 v3, 0x3

    iput v3, p0, Lyou/zta/zta/zta/rtg/rtg;->tsu:I

    const/4 v4, 0x4

    iput v4, p0, Lyou/zta/zta/zta/rtg/rtg;->rtg:I

    const/16 v4, 0x2710

    iput v4, p0, Lyou/zta/zta/zta/rtg/rtg;->ssp:I

    const/16 v4, 0x61a8

    iput v4, p0, Lyou/zta/zta/zta/rtg/rtg;->cno:I

    const v4, 0xea60

    iput v4, p0, Lyou/zta/zta/zta/rtg/rtg;->kth:I

    const/16 v4, 0x1388

    iput v4, p0, Lyou/zta/zta/zta/rtg/rtg;->bio:I

    const/16 v4, 0x3a98

    iput v4, p0, Lyou/zta/zta/zta/rtg/rtg;->igw:I

    iput v1, p0, Lyou/zta/zta/zta/rtg/rtg;->wtn:I

    iput v2, p0, Lyou/zta/zta/zta/rtg/rtg;->gck:I

    iput v3, p0, Lyou/zta/zta/zta/rtg/rtg;->dma:I

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ywr:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lyou/zta/zta/zta/rtg/rtg;->qbh:J

    iput-wide v1, p0, Lyou/zta/zta/zta/rtg/rtg;->oif:J

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->bvj:I

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ibl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    new-instance v0, Lyou/zta/zta/zta/rtg/rtg$zta;

    invoke-direct {v0, p0}, Lyou/zta/zta/zta/rtg/rtg$zta;-><init>(Lyou/zta/zta/zta/rtg/rtg;)V

    iput-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zgw:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getInstance(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lyou/zta/zta/zta/rtg/rtg;->vju:Landroid/content/Context;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p0

    sput-object p0, Lyou/zta/zta/zta/rtg/rtg;->bud:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-void
.end method

.method public getProviderFlag()I
    .locals 0

    iget p0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    return p0
.end method

.method public mdmAbortReport()V
    .locals 2

    sget-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdmAbortReport::mdmLossLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lyou/zta/zta/zta/rtg/rtg;->les:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLocationMdm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lyou/zta/zta/zta/rtg/rtg;->mdmCacheClear()V

    return-void
.end method

.method public mdmCacheClear()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->c:Z

    sput-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->d:Z

    sget-object v0, Lyou/zta/zta/zta/rtg/rtg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Lyou/zta/zta/zta/rtg/rtg;->les:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lyou/zta/zta/zta/rtg/rtg;->qbh:J

    iput-wide v1, p0, Lyou/zta/zta/zta/rtg/rtg;->oif:J

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ywr:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public mdmGetLocSwitchData()Z
    .locals 3

    invoke-virtual {p0}, Lyou/zta/zta/zta/rtg/rtg;->mdmLocationModeListener()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "gnss_switch_abnormal"

    const-string v2, "info"

    invoke-virtual {p0, v1, v2, v0}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationSwitchState = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,Report to mdm ok... "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpLocationMdm"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public mdmLocationModeListener()Ljava/lang/String;
    .locals 4

    sget-object p0, Lyou/zta/zta/zta/rtg/rtg;->vju:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lyou/zta/zta/zta/rtg/rtg;->cgv:I

    const-string v1, "location_providers_allowed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lyou/zta/zta/zta/rtg/rtg;->vju:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-eqz v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location Switch Original Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpLocationMdm"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "gps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "network"

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p0, v1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, p0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-ge p0, v1, :cond_6

    move-object v0, v3

    :cond_6
    return-object v0
.end method

.method public mdmPrReport()V
    .locals 1

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    invoke-virtual {p0, v0}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportProviderData(I)Z

    const/4 v0, 0x0

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    return-void
.end method

.method public mdmReportLocSwitchData()V
    .locals 3

    sget-object v0, Lyou/zta/zta/zta/rtg/rtg;->bud:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    sput-object v0, Lyou/zta/zta/zta/rtg/rtg;->bud:Lnet/oneplus/odm/OpDeviceManagerInjector;

    :cond_0
    iget-object p0, p0, Lyou/zta/zta/zta/rtg/rtg;->zgw:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p0, "OpLocationMdm"

    const-string v0, "dmReportLocSwitchData ok "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appid"

    const-string v1, "F6X2WLDK2K"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdmReportOtherData... enevttag ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpLocationMdm"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p2, Lyou/zta/zta/zta/rtg/rtg;->bud:Lnet/oneplus/odm/OpDeviceManagerInjector;

    sget-object p3, Lyou/zta/zta/zta/rtg/rtg;->vju:Landroid/content/Context;

    invoke-virtual {p2, p3, p1, v0, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public mdmReportProviderData(I)Z
    .locals 4

    sget-object v0, Lyou/zta/zta/zta/rtg/rtg;->vju:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gnss_provider_abnormal"

    const-string v3, "provider"

    invoke-virtual {p0, v2, v3, v0}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean p0, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "provider = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,Report to mdm ok... "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpLocationMdm"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public mdmRequestTimeCount(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-boolean v2, Lyou/zta/zta/zta/rtg/rtg;->c:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {v2}, Lyou/zta/zta/zta/rtg/rtg$you;->sis(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/rtg$you;->cno(Lyou/zta/zta/zta/rtg/rtg$you;)J

    move-result-wide v2

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr p2, v2

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {p1, p2, p3}, Lyou/zta/zta/zta/rtg/rtg$you;->igw(Lyou/zta/zta/zta/rtg/rtg$you;J)J

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/rtg$you;->bio(Lyou/zta/zta/zta/rtg/rtg$you;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    const-string p1, "gnss_request_status"

    const-string p2, "pkgname"

    iget-object p3, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {p3}, Lyou/zta/zta/zta/rtg/rtg$you;->zta(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "gnss_request_status"

    const-string p2, "provider"

    iget-object p3, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {p3}, Lyou/zta/zta/zta/rtg/rtg$you;->rtg(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "gnss_request_status"

    const-string p2, "Time"

    iget-object p3, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {p3}, Lyou/zta/zta/zta/rtg/rtg$you;->bio(Lyou/zta/zta/zta/rtg/rtg$you;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean p0, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz p0, :cond_2

    const-string p0, "OpLocationMdm"

    const-string p1, "mdmRequestTimeCount:: report request info to mdm..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public mdmSaveOnLocationChanged(Ljava/lang/String;J)Z
    .locals 6

    sget-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    sget-boolean v3, Lyou/zta/zta/zta/rtg/rtg;->c:Z

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {v3}, Lyou/zta/zta/zta/rtg/rtg$you;->zta(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->ibl:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->ibl:Ljava/lang/String;

    const-string v4, "com.amap.android.location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->ibl:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {v3}, Lyou/zta/zta/zta/rtg/rtg$you;->rtg(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "passive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    iget-object v4, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    move v0, v2

    :goto_3
    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {v3}, Lyou/zta/zta/zta/rtg/rtg$you;->rtg(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-boolean v3, Lyou/zta/zta/zta/rtg/rtg;->d:Z

    if-eqz v3, :cond_c

    sput-boolean v2, Lyou/zta/zta/zta/rtg/rtg;->d:Z

    iget-object v2, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {v2}, Lyou/zta/zta/zta/rtg/rtg$you;->cno(Lyou/zta/zta/zta/rtg/rtg$you;)J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    iget v2, p0, Lyou/zta/zta/zta/rtg/rtg;->wtn:I

    sput v2, Lyou/zta/zta/zta/rtg/rtg;->irq:I

    :cond_6
    iget-object v2, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {v2}, Lyou/zta/zta/zta/rtg/rtg$you;->cno(Lyou/zta/zta/zta/rtg/rtg$you;)J

    move-result-wide v2

    sub-long v2, p2, v2

    iget v4, p0, Lyou/zta/zta/zta/rtg/rtg;->bio:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    iget v2, p0, Lyou/zta/zta/zta/rtg/rtg;->gck:I

    sput v2, Lyou/zta/zta/zta/rtg/rtg;->irq:I

    :cond_7
    iget-object v2, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-static {v0}, Lyou/zta/zta/zta/rtg/rtg$you;->cno(Lyou/zta/zta/zta/rtg/rtg$you;)J

    move-result-wide v2

    sub-long/2addr p2, v2

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->igw:I

    int-to-long v2, v0

    cmp-long p2, p2, v2

    if-lez p2, :cond_8

    iget p2, p0, Lyou/zta/zta/zta/rtg/rtg;->dma:I

    sput p2, Lyou/zta/zta/zta/rtg/rtg;->irq:I

    :cond_8
    const-string p2, "gps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Lyou/zta/zta/zta/rtg/rtg;->sis:I

    iput p2, p0, Lyou/zta/zta/zta/rtg/rtg;->bvj:I

    :cond_9
    const-string p2, "network"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget p2, p0, Lyou/zta/zta/zta/rtg/rtg;->you:I

    iput p2, p0, Lyou/zta/zta/zta/rtg/rtg;->bvj:I

    :cond_a
    const-string p2, "fused"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lyou/zta/zta/zta/rtg/rtg;->rtg:I

    iput p1, p0, Lyou/zta/zta/zta/rtg/rtg;->bvj:I

    :cond_b
    sget p1, Lyou/zta/zta/zta/rtg/rtg;->irq:I

    iget p2, p0, Lyou/zta/zta/zta/rtg/rtg;->bvj:I

    invoke-virtual {p0, p1, p2}, Lyou/zta/zta/zta/rtg/rtg;->mdmTtffReport(II)V

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_d
    return v1
.end method

.method public mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    sget-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->c:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    new-instance v0, Lyou/zta/zta/zta/rtg/rtg$you;

    invoke-direct {v0}, Lyou/zta/zta/zta/rtg/rtg$you;-><init>()V

    invoke-virtual {v0}, Lyou/zta/zta/zta/rtg/rtg$you;->wtn()V

    invoke-static {v0, p1}, Lyou/zta/zta/zta/rtg/rtg$you;->you(Lyou/zta/zta/zta/rtg/rtg$you;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lyou/zta/zta/zta/rtg/rtg$you;->tsu(Lyou/zta/zta/zta/rtg/rtg$you;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p3}, Lyou/zta/zta/zta/rtg/rtg$you;->ssp(Lyou/zta/zta/zta/rtg/rtg$you;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p4, p5}, Lyou/zta/zta/zta/rtg/rtg$you;->kth(Lyou/zta/zta/zta/rtg/rtg$you;J)J

    iget-object v1, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdmSaveRequestInfo: packageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", identityHashCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requesterName ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", startRequestSystemTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mSaveRequestList.size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/rtg;->gwm:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpLocationMdm"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public mdmSetLossLevel(J)V
    .locals 6

    iput-wide p1, p0, Lyou/zta/zta/zta/rtg/rtg;->qbh:J

    iget-wide v0, p0, Lyou/zta/zta/zta/rtg/rtg;->oif:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p0, Lyou/zta/zta/zta/rtg/rtg;->ywr:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    sub-long/2addr p1, v0

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->ssp:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lyou/zta/zta/zta/rtg/rtg;->wtn:I

    sput p1, Lyou/zta/zta/zta/rtg/rtg;->les:I

    :cond_0
    iget-wide p1, p0, Lyou/zta/zta/zta/rtg/rtg;->qbh:J

    iget-wide v0, p0, Lyou/zta/zta/zta/rtg/rtg;->oif:J

    sub-long/2addr p1, v0

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->cno:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iget p1, p0, Lyou/zta/zta/zta/rtg/rtg;->gck:I

    sput p1, Lyou/zta/zta/zta/rtg/rtg;->les:I

    :cond_1
    iget-wide p1, p0, Lyou/zta/zta/zta/rtg/rtg;->qbh:J

    iget-wide v0, p0, Lyou/zta/zta/zta/rtg/rtg;->oif:J

    sub-long/2addr p1, v0

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->kth:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lyou/zta/zta/zta/rtg/rtg;->dma:I

    sput p1, Lyou/zta/zta/zta/rtg/rtg;->les:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lyou/zta/zta/zta/rtg/rtg;->ywr:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lyou/zta/zta/zta/rtg/rtg;->ywr:I

    :cond_3
    :goto_0
    sget-boolean p1, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mdmSetLossLevel::mdmLossLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lyou/zta/zta/zta/rtg/rtg;->les:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpLocationMdm"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-wide p1, p0, Lyou/zta/zta/zta/rtg/rtg;->qbh:J

    iput-wide p1, p0, Lyou/zta/zta/zta/rtg/rtg;->oif:J

    sget p1, Lyou/zta/zta/zta/rtg/rtg;->les:I

    if-lez p1, :cond_5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gnss_location_status"

    const-string v0, "level"

    invoke-virtual {p0, p2, v0, p1}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x0

    sput p0, Lyou/zta/zta/zta/rtg/rtg;->les:I

    :cond_5
    return-void
.end method

.method public mdmTtffReport(II)V
    .locals 3

    sget v0, Lyou/zta/zta/zta/rtg/rtg;->irq:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    sget-boolean v0, Lyou/zta/zta/zta/rtg/rtg;->cjf:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdmTtffReport::ttffLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mdmTempProvider ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpLocationMdm"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "gnss_provider_ttff"

    const-string v2, "provider"

    invoke-virtual {p0, v0, v2, p2}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ttff"

    invoke-virtual {p0, v0, p2, p1}, Lyou/zta/zta/zta/rtg/rtg;->mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sput v1, Lyou/zta/zta/zta/rtg/rtg;->irq:I

    const/4 p1, 0x0

    iput p1, p0, Lyou/zta/zta/zta/rtg/rtg;->bvj:I

    const/4 p1, 0x0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/rtg;->ibl:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setFusedProvider()V
    .locals 1

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->rtg:I

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    return-void
.end method

.method public setGnssProvider()V
    .locals 1

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->sis:I

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    return-void
.end method

.method public setNetworkProvider()V
    .locals 1

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->you:I

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    return-void
.end method

.method public setPassiveProvider()V
    .locals 1

    iget v0, p0, Lyou/zta/zta/zta/rtg/rtg;->tsu:I

    iput v0, p0, Lyou/zta/zta/zta/rtg/rtg;->zta:I

    return-void
.end method
