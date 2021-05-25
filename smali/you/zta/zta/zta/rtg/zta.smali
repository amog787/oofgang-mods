.class public Lyou/zta/zta/zta/rtg/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/location/IOpGnssConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/zta/zta/rtg/zta$you;,
        Lyou/zta/zta/zta/rtg/zta$sis;
    }
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "C2K_PORT"

.field private static final cno:Ljava/lang/String; = "SUPL_PORT"

.field public static final dma:Ljava/lang/String; = "NFW_PROXY_APPS"

.field private static final gck:Ljava/lang/String; = "LPP_PROFILE"

.field private static final igw:Ljava/lang/String; = "SUPL_VER"

.field private static final kth:Ljava/lang/String; = "C2K_HOST"

.field private static rtg:Z = false

.field private static final ssp:Ljava/lang/String; = "SUPL_HOST"

.field private static final tsu:Ljava/lang/String; = "OpGnssConf"

.field private static final wtn:Ljava/lang/String; = "SUPL_ES"


# instance fields
.field private sis:Lyou/zta/zta/zta/rtg/zta$you;

.field private you:Lyou/zta/zta/zta/rtg/zta$sis;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lyou/zta/zta/zta/rtg/zta;->rtg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic you(Lyou/zta/zta/zta/rtg/zta;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/zta;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lyou/zta/zta/zta/rtg/zta;->rtg:Z

    return v0
.end method


# virtual methods
.method public initInstance(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/zta;->zta:Landroid/content/Context;

    new-instance p1, Lyou/zta/zta/zta/rtg/zta$sis;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lyou/zta/zta/zta/rtg/zta$sis;-><init>(Lyou/zta/zta/zta/rtg/zta;Lyou/zta/zta/zta/rtg/zta$zta;)V

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/zta;->you:Lyou/zta/zta/zta/rtg/zta$sis;

    new-instance p1, Lyou/zta/zta/zta/rtg/zta$you;

    invoke-direct {p1, p0, v0}, Lyou/zta/zta/zta/rtg/zta$you;-><init>(Lyou/zta/zta/zta/rtg/zta;Lyou/zta/zta/zta/rtg/zta$zta;)V

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/zta;->sis:Lyou/zta/zta/zta/rtg/zta$you;

    return-void
.end method

.method public loadLABConfig(Ljava/util/Properties;)V
    .locals 0

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/sis;->tsu(Ljava/util/Properties;)V

    return-void
.end method

.method public loadProxyAPPConfig(Ljava/util/Properties;)V
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/zta;->you:Lyou/zta/zta/zta/rtg/zta$sis;

    invoke-virtual {p0, p1}, Lyou/zta/zta/zta/rtg/zta$sis;->zta(Ljava/util/Properties;)V

    return-void
.end method

.method public loadSpecialCarrierConfig(Ljava/util/Properties;)V
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/zta;->sis:Lyou/zta/zta/zta/rtg/zta$you;

    invoke-virtual {p0, p1}, Lyou/zta/zta/zta/rtg/zta$you;->rtg(Ljava/util/Properties;)V

    return-void
.end method
