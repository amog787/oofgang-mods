.class final Lcom/oneplus/android/server/display/rtg;
.super Lcom/oneplus/android/server/display/sis;
.source ""


# static fields
.field private static final cno:Z

.field private static final ssp:Ljava/lang/String; = "OpGamutMappingController"


# instance fields
.field private rtg:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/display/rtg;->cno:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/sis;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/android/server/display/rtg;->rtg:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    return-void
.end method


# virtual methods
.method public cno()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public oif(Landroid/content/Context;Z)V
    .locals 0

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/rtg;->rtg:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p0, "OpGamutMappingController"

    const-string p1, "can not get OneplusDisplay service"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public wtn(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
