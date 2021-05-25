.class Lyou/zta/zta/zta/rtg/zta$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/rtg/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "3"

.field private static final cno:Ljava/lang/String; = "supl.google.com"

.field private static final igw:Ljava/lang/String; = "3"

.field private static final kth:Ljava/lang/String; = "7275"

.field private static final rtg:Ljava/lang/String; = "supl.geo.t-mobile.com"

.field private static final sis:Ljava/lang/String; = "0x20004"

.field private static final ssp:Ljava/lang/String; = "supl.qxwz.com"

.field private static final tsu:Ljava/lang/String; = "supl2019.lbs.sprint.com"

.field private static final you:Ljava/lang/String; = "0x20002"


# instance fields
.field final synthetic zta:Lyou/zta/zta/zta/rtg/zta;


# direct methods
.method private constructor <init>(Lyou/zta/zta/zta/rtg/zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/zta$you;->zta:Lyou/zta/zta/zta/rtg/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyou/zta/zta/zta/rtg/zta;Lyou/zta/zta/zta/rtg/zta$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/zta$you;-><init>(Lyou/zta/zta/zta/rtg/zta;)V

    return-void
.end method

.method private sis(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const-string v0, "310120"

    const-string v1, "312530"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move v1, p0

    :goto_0
    if-ge p0, p2, :cond_3

    aget-object v2, v0, p0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return p0
.end method

.method private ssp(Ljava/util/Properties;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "OpGnssConf"

    const-string v3, "load supl carrier config"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ro.boot.opcarrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lyou/zta/zta/zta/rtg/zta$you;->you()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "supl.google.com"

    const-string v6, "3"

    const-string v7, "LPP_PROFILE"

    const-string v8, "7275"

    const-string v9, "SUPL_PORT"

    const-string v10, "SUPL_HOST"

    if-eqz v4, :cond_6

    array-length v11, v4

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v11, 0x0

    aget-object v12, v4, v11

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v0, v12}, Lyou/zta/zta/zta/rtg/zta$you;->zta(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "0x20002"

    const-string v11, "SUPL_VER"

    if-eqz v14, :cond_1

    invoke-virtual {v1, v11, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "supl.qxwz.com"

    invoke-virtual {v1, v10, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-direct {v0, v12, v4}, Lyou/zta/zta/zta/rtg/zta$you;->tsu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    const/16 v17, 0x49

    if-eqz v14, :cond_3

    new-array v14, v13, [I

    const/16 v16, 0x0

    aput v17, v14, v16

    invoke-static {v14}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "tmo"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v13

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_3

    const-string v0, "tmo settings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0x20004"

    invoke-virtual {v1, v11, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "supl.geo.t-mobile.com"

    invoke-virtual {v1, v10, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-direct {v0, v12, v4}, Lyou/zta/zta/zta/rtg/zta$you;->sis(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v13, [I

    const/4 v4, 0x0

    aput v17, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sprint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v13

    :cond_4
    if-eqz v4, :cond_5

    const-string v0, "sprint settings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "supl2019.lbs.sprint.com"

    invoke-virtual {v1, v10, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_5
    const-string v0, "default settings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v10, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_6
    :goto_1
    const-string v0, "mccmnc is null, use global default one"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v10, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private tsu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "310"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return p0

    :cond_2
    const/16 p1, 0xd

    const-string v0, "160"

    const-string v1, "200"

    const-string v2, "210"

    const-string v3, "220"

    const-string v4, "230"

    const-string v5, "240"

    const-string v6, "250"

    const-string v7, "260"

    const-string v8, "270"

    const-string v9, "310"

    const-string v10, "490"

    const-string v11, "660"

    const-string v12, "800"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    move v1, p0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return p0
.end method

.method private you()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/zta$you;->zta:Lyou/zta/zta/zta/rtg/zta;

    invoke-static {v0}, Lyou/zta/zta/zta/rtg/zta;->you(Lyou/zta/zta/zta/rtg/zta;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/zta$you;->zta:Lyou/zta/zta/zta/rtg/zta;

    invoke-static {p0}, Lyou/zta/zta/zta/rtg/zta;->you(Lyou/zta/zta/zta/rtg/zta;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {}, Lyou/zta/zta/zta/rtg/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM MCC/MNC is available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpGnssConf"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    :cond_4
    return-object v1
.end method

.method private zta(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "460"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lyou/zta/zta/zta/rtg/zta;->zta()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is china? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpGnssConf"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method


# virtual methods
.method public rtg(Ljava/util/Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/zta$you;->ssp(Ljava/util/Properties;)V

    return-void
.end method
