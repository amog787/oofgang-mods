.class public Lyou/zta/zta/zta/rtg/sis$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/rtg/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "persist.sys.gps.lab_slp_port"

.field private static final bvj:Ljava/lang/String; = "C2K_HOST"

.field private static final cno:Ljava/lang/String; = "persist.sys.gps.lab_lpp"

.field private static final dma:Ljava/lang/String; = "persist.sys.gps.lab_emerg_pdn"

.field private static final gck:Ljava/lang/String; = "persist.sys.gps.lab_aglo_ptl"

.field private static final gwm:Ljava/lang/String; = "SUPL_VER"

.field private static final ibl:Ljava/lang/String; = "C2K_PORT"

.field private static final igw:Ljava/lang/String; = "persist.sys.gps.lab_supl_ver"

.field private static final kth:Ljava/lang/String; = "persist.sys.gps.lab_slp_url"

.field private static final obl:Ljava/lang/String; = "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

.field private static final oif:Ljava/lang/String; = "SUPL_PORT"

.field private static final qbh:Ljava/lang/String; = "SUPL_HOST"

.field private static final rtg:Ljava/lang/String; = "persist.sys.gps.lab_disable_molr"

.field private static final ssp:Ljava/lang/String; = "persist.sys.gps.lab_disable_doze"

.field private static final tsu:Ljava/lang/String; = "persist.sys.gps.lab"

.field private static final ugm:Ljava/lang/String; = "SUPL_ES"

.field private static final vdb:Ljava/lang/String; = "LPP_PROFILE"

.field private static final wtn:Ljava/lang/String; = "persist.sys.gps.lab_supl_es"

.field private static final ywr:Ljava/lang/String; = "persist.sys.gps.lab_others"

.field private static final zgw:Ljava/lang/String; = "A_GLONASS_POS_PROTOCOL_SELECT"


# instance fields
.field private sis:Z

.field private you:Z

.field private zta:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/sis$zta;->zta:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/sis$zta;->you:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/sis$zta;->sis:Z

    const-string v1, "persist.sys.gps.lab"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lyou/zta/zta/zta/rtg/sis$zta;->zta:Z

    const-string v1, "persist.sys.gps.lab_disable_molr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lyou/zta/zta/zta/rtg/sis$zta;->you:Z

    const-string v1, "persist.sys.gps.lab_disable_doze"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/sis$zta;->sis:Z

    return-void
.end method

.method private bio(Ljava/util/Properties;)V
    .locals 2

    const-string p0, "persist.sys.gps.lab_supl_es"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAB: set CONFIG_SUPL_ES = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLabSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SUPL_ES"

    invoke-virtual {p1, v0, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private igw(Ljava/util/Properties;)V
    .locals 4

    const-string p0, "persist.sys.gps.lab_slp_url"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SUPL_PORT"

    const-string v2, "OpLabSettings"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LAB: set CONFIG_SUPL_HOST = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "SUPL_HOST"

    if-eqz v0, :cond_0

    const-string p0, ""

    invoke-virtual {p1, v3, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v3, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string p0, "persist.sys.gps.lab_slp_port"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LAB: set CONFIG_SUPL_PORT = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private kth(Ljava/util/Properties;)V
    .locals 7

    const-string p0, "persist.sys.gps.lab_others"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LAB: set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpLabSettings"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rtg(Ljava/util/Properties;)V
    .locals 2

    const-string p0, "persist.sys.gps.lab_emerg_pdn"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAB: set CONFIG_USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLabSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p1, v0, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private sis()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLabEnabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lyou/zta/zta/zta/rtg/sis$zta;->zta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLabSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lyou/zta/zta/zta/rtg/sis$zta;->zta:Z

    return p0
.end method

.method private ssp(Ljava/util/Properties;)V
    .locals 2

    const-string p0, "persist.sys.gps.lab_lpp"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAB: set CONFIG_SUPL_LPP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLabSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p1, v0, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private tsu(Ljava/util/Properties;)V
    .locals 2

    const-string p0, "persist.sys.gps.lab_aglo_ptl"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAB: set CONFIG_A_GLONASS_POS_PROTOCOL_SELECT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLabSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p1, v0, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private wtn(Ljava/util/Properties;)V
    .locals 2

    const-string p0, "persist.sys.gps.lab_supl_ver"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAB: set CONFIG_SUPL_VER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLabSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SUPL_VER"

    invoke-virtual {p1, v0, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public cno(Ljava/util/Properties;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/sis$zta;->sis()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/sis$zta;->ssp(Ljava/util/Properties;)V

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/sis$zta;->igw(Ljava/util/Properties;)V

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/sis$zta;->wtn(Ljava/util/Properties;)V

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/sis$zta;->bio(Ljava/util/Properties;)V

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/sis$zta;->tsu(Ljava/util/Properties;)V

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/sis$zta;->rtg(Ljava/util/Properties;)V

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/sis$zta;->kth(Ljava/util/Properties;)V

    :cond_0
    return-void
.end method

.method public you()Z
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/sis$zta;->sis()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lyou/zta/zta/zta/rtg/sis$zta;->you:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public zta()Z
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/rtg/sis$zta;->sis()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lyou/zta/zta/zta/rtg/sis$zta;->sis:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
