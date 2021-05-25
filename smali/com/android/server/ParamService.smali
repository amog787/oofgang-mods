.class public final Lcom/android/server/ParamService;
.super Lcom/oneplus/os/IParamService$Stub;
.source ""


# static fields
.field public static final CACHED_DEFAULT_VALUE:I = -0x1

.field private static final DEBUG_ONEPLUS:Z

.field public static final PARAM_ABNORMAL_REBOOT_COUNT:I = 0x7

.field public static final PARAM_BACKCOVER_COLOR:I = 0x2

.field public static final PARAM_BOOT_TYPE:I = 0x10

.field public static final PARAM_CAL_REBOOT_COUNT:I = 0x5

.field public static final PARAM_CUST_FLAG:I = 0x4

.field public static final PARAM_ENC_CARRIER_ID:I = 0x17

.field public static final PARAM_ENC_IMEI_SET_FLAG:I = 0x12

.field public static final PARAM_ENC_MEID_SET_FLAG:I = 0x16

.field public static final PARAM_ENC_SALE_CHANNEL_ID:I = 0x19

.field public static final PARAM_ENC_TARGET_SW_ID:I = 0x18

.field public static final PARAM_FASTBOOT_COUNT:I = 0x9

.field public static final PARAM_HDCP_STATUS:I = 0xf

.field public static final PARAM_INDEX_TIME_CREATE_KEY:I = 0xc

.field public static final PARAM_INDEX_TIME_FAIL_KEY:I = 0xe

.field public static final PARAM_INDEX_TIME_PASS_KEY:I = 0xd

.field public static final PARAM_INTRANET:I = 0x1

.field public static final PARAM_NORMAL_REBOOT_COUNT:I = 0x6

.field public static final PARAM_ONLINE_CFG_TEST_ENV:I = 0x11

.field public static final PARAM_RECONDITION_FLAG:I = 0x15

.field public static final PARAM_RESTART_08_COUNT:I = 0xa

.field public static final PARAM_RESTART_OTHER_COUNT:I = 0xb

.field public static final PARAM_SERVICE:Ljava/lang/String; = "ParamService"

.field public static final PARAM_SMT_DOWNLOAD_STATE:I = 0x13

.field public static final PARAM_UNLOCK_COUNT:I = 0x3

.field public static final PARAM_UPDATE_COUNT:I = 0x8

.field public static final PARAM_UPGRADE_DOWNLOAD_STATE:I = 0x14

.field public static final TAG:Ljava/lang/String; = "ParamService"


# instance fields
.field private mCachedBackCoverColor:I

.field private mCachedCustType:I

.field private mCachedTargetSwId:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/os/IParamService$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    iput v0, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    iput v0, p0, Lcom/android/server/ParamService;->mCachedTargetSwId:I

    return-void
.end method


# virtual methods
.method public getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 2

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception getting OnePlus param service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ParamService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParamIntSYNC(I)I
    .locals 9

    const/4 v0, 0x4

    const-string v1, "ParamService"

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    iget v3, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    if-eq v3, v2, :cond_1

    sget-boolean p1, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return cached cust type value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p0, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    return p0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget v4, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    if-eq v4, v2, :cond_3

    sget-boolean p1, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return cached back cover color value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget p0, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    return p0

    :cond_3
    const/16 v4, 0x18

    if-ne p1, v4, :cond_5

    iget v5, p0, Lcom/android/server/ParamService;->mCachedTargetSwId:I

    if-eq v5, v2, :cond_5

    sget-boolean p1, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return cached sw id value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/ParamService;->mCachedTargetSwId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget p0, p0, Lcom/android/server/ParamService;->mCachedTargetSwId:I

    return p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/ParamService;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v5

    if-nez v5, :cond_6

    const-string p0, "Can\'t get IOneplusParam"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    :try_start_0
    invoke-interface {v5, p1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-boolean v6, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParamIntSYNC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    move v5, v2

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getParamIntSYNC throws exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    if-ne v0, v2, :cond_8

    iput v5, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    :cond_8
    if-ne p1, v3, :cond_9

    iget v0, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    if-ne v0, v2, :cond_9

    iput v5, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    :cond_9
    if-ne p1, v4, :cond_a

    iget p1, p0, Lcom/android/server/ParamService;->mCachedTargetSwId:I

    if-ne p1, v2, :cond_a

    iput v5, p0, Lcom/android/server/ParamService;->mCachedTargetSwId:I

    :cond_a
    return v5
.end method

.method public publish(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    const-string v1, "ParamService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish context="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/ParamService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/os/IParamService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
