.class public Lcom/android/server/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/power/IOpFastCharge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cjf$ssp;,
        Lcom/android/server/cjf$igw;,
        Lcom/android/server/cjf$bio;,
        Lcom/android/server/cjf$cno;,
        Lcom/android/server/cjf$kth;
    }
.end annotation


# static fields
.field private static A:Lcom/android/server/cjf$bio; = null

.field private static final a:Ljava/lang/String; = "FastCharge"

.field private static final b:Ljava/lang/String; = "OpFastCharge"

.field private static final c:Ljava/lang/String; = "BatteryLed"

.field private static final d:Ljava/lang/String; = "/sys/class/power_supply/battery/fastchg_status"

.field private static final e:Ljava/lang/String; = "/proc/enhance_dash"

.field private static final f:Ljava/lang/String; = "fast_charge"

.field private static final g:Ljava/lang/String; = "pd_charge"

.field private static final h:Ljava/lang/String; = "reverse_wireless_disable_reason"

.field private static final i:Ljava/lang/String; = "/sys/class/power_supply/wireless/online"

.field private static final ivd:Z = false

.field private static final j:Ljava/lang/String; = "/sys/class/power_supply/wireless/real_type"

.field private static final k:Ljava/lang/String; = "/proc/wireless/enable_tx"

.field private static final l:Ljava/lang/String; = "sys/class/power_supply/usb/real_type"

.field private static final m:Ljava/lang/String; = "/proc/wireless/deviated"

.field private static final n:Ljava/lang/String; = "/proc/wireless/quiet_mode"

.field private static final o:I = 0x0

.field private static final p:Ljava/lang/String; = "/proc/wireless/fast_skin_threld"

.field private static final q:Ljava/lang/String; = "/proc/skin_temp_thrd/fastchg_thd"

.field private static final qeg:Z

.field private static final r:Ljava/lang/String; = "/proc/skin_temp_thrd/fastchg_lcdoff_thd"

.field private static final s:Ljava/lang/String; = "/proc/skin_temp_thrd/norchg_thd"

.field private static final t:Ljava/lang/String; = "/proc/skin_temp_thrd/norchg_lcdoff_thd"

.field private static final u:[I

.field private static final v:[I

.field private static final w:[I

.field private static final x:[I

.field private static final y:[I

.field private static z:Landroid/content/Context;


# instance fields
.field private bio:Z

.field private bud:Landroid/os/Handler;

.field private bvj:I

.field cgv:[I

.field private cjf:Ljava/lang/String;

.field private cno:Z

.field private dma:Z

.field private ear:Z

.field fto:[I

.field private gck:Z

.field private gwm:I

.field private hmo:Lcom/oneplus/config/ConfigObserver;

.field private ibl:I

.field private igw:Z

.field private ire:Ljava/lang/String;

.field private irq:Lcom/android/server/cjf$ssp;

.field private kth:Z

.field private les:Landroid/os/Handler;

.field lqr:[I

.field private obl:Landroid/app/AlarmManager;

.field private oif:I

.field private oxb:Z

.field private qbh:Z

.field private rtg:Z

.field private sis:I

.field private ssp:Z

.field private tsu:Z

.field private ugm:Lcom/android/server/cjf$kth;

.field private vdb:Lcom/android/server/cjf$cno;

.field private vdw:I

.field veq:[I

.field vju:[I

.field private wtn:Z

.field private you:I

.field private ywr:Z

.field private final zgw:Ljava/lang/Object;

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/cjf;->qeg:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cjf;->u:[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/cjf;->v:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/cjf;->w:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/cjf;->x:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/cjf;->y:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1a4
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x27
        0x26
        0x25
        0x24
        0x22
        0x21
    .end array-data

    :array_2
    .array-data 4
        0x29
        0x27
        0x26
        0x24
    .end array-data

    :array_3
    .array-data 4
        0x27
        0x26
        0x25
        0x24
        0x22
        0x21
    .end array-data

    :array_4
    .array-data 4
        0x2d
        0x2c
        0x2c
        0x2a
        0x2a
        0x29
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cjf;->zta:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/cjf;->zgw:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/server/cjf;->oxb:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/cjf;->fto:[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/cjf;->lqr:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/cjf;->veq:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/cjf;->cgv:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/cjf;->vju:[I

    return-void
.end method

.method static synthetic bio(Lcom/android/server/cjf;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cjf;->les:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic bvj()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/cjf;->z:Landroid/content/Context;

    return-object v0
.end method

.method private cjf(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "FastCharge"

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "charge_thermal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v7, v12

    goto :goto_1

    :sswitch_1
    const-string v8, "wireless_charge_thermal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_2
    const-string v8, "charge_lcd_off"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v7, v11

    goto :goto_1

    :sswitch_3
    const-string v8, "normal_charge_thermal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v7, v10

    goto :goto_1

    :sswitch_4
    const-string v8, "normal_charge_thermal_lcd_off"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    const/4 v7, 0x4

    :cond_1
    :goto_1
    const-string v6, " "

    if-eqz v7, :cond_b

    const-string v8, "temp_down_little_larger"

    const-string v13, "temp_up_little_larger"

    const-string v14, "temp_down_smaller"

    const-string v15, "temp_up_smaller"

    const-string v3, "temp_down_larger"

    const-string v9, "temp_up_larger"

    const/16 v16, 0x5

    if-eq v7, v12, :cond_9

    if-eq v7, v11, :cond_7

    if-eq v7, v10, :cond_5

    const/4 v10, 0x4

    if-eq v7, v10, :cond_3

    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_3
    :try_start_1
    iget-object v7, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v9, v0, Lcom/android/server/cjf;->vju:[I

    aget v9, v9, v12

    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v9, v0, Lcom/android/server/cjf;->vju:[I

    aget v9, v9, v11

    invoke-virtual {v5, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v13, 0x3

    aget v10, v10, v13

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v10, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v13, 0x4

    aget v10, v10, v13

    invoke-virtual {v5, v15, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    aget v13, v13, v16

    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ne v7, v13, :cond_4

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    aget v13, v13, v12

    if-ne v3, v13, :cond_4

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    aget v13, v13, v11

    if-ne v9, v13, :cond_4

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    if-ne v8, v13, :cond_4

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    if-ne v10, v13, :cond_4

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    aget v13, v13, v16

    if-eq v5, v13, :cond_2

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "/proc/skin_temp_thrd/norchg_lcdoff_thd"

    invoke-static {v13, v6}, Lcom/android/server/cjf;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v14, 0x0

    aput v7, v13, v14

    iget-object v7, v0, Lcom/android/server/cjf;->vju:[I

    aput v3, v7, v12

    iget-object v3, v0, Lcom/android/server/cjf;->vju:[I

    aput v9, v3, v11

    iget-object v3, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v7, 0x3

    aput v8, v3, v7

    iget-object v3, v0, Lcom/android/server/cjf;->vju:[I

    const/4 v7, 0x4

    aput v10, v3, v7

    iget-object v3, v0, Lcom/android/server/cjf;->vju:[I

    aput v5, v3, v16

    sget-boolean v3, Lcom/android/server/cjf;->qeg:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change Normal charge power LCD off to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    iget-object v7, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v9, v0, Lcom/android/server/cjf;->cgv:[I

    aget v9, v9, v12

    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v9, v0, Lcom/android/server/cjf;->cgv:[I

    aget v9, v9, v11

    invoke-virtual {v5, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v13, 0x3

    aget v10, v10, v13

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v10, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v13, 0x4

    aget v10, v10, v13

    invoke-virtual {v5, v15, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    aget v13, v13, v16

    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ne v7, v13, :cond_6

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    aget v13, v13, v12

    if-ne v3, v13, :cond_6

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    aget v13, v13, v11

    if-ne v9, v13, :cond_6

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    if-ne v8, v13, :cond_6

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    if-ne v10, v13, :cond_6

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    aget v13, v13, v16

    if-eq v5, v13, :cond_2

    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "/proc/skin_temp_thrd/norchg_thd"

    invoke-static {v13, v6}, Lcom/android/server/cjf;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v14, 0x0

    aput v7, v13, v14

    iget-object v7, v0, Lcom/android/server/cjf;->cgv:[I

    aput v3, v7, v12

    iget-object v3, v0, Lcom/android/server/cjf;->cgv:[I

    aput v9, v3, v11

    iget-object v3, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v7, 0x3

    aput v8, v3, v7

    iget-object v3, v0, Lcom/android/server/cjf;->cgv:[I

    const/4 v7, 0x4

    aput v10, v3, v7

    iget-object v3, v0, Lcom/android/server/cjf;->cgv:[I

    aput v5, v3, v16

    sget-boolean v3, Lcom/android/server/cjf;->qeg:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change Normal charge power thermel to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_7
    iget-object v7, v0, Lcom/android/server/cjf;->veq:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/cjf;->veq:[I

    aget v8, v8, v12

    invoke-virtual {v5, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v8, v0, Lcom/android/server/cjf;->veq:[I

    aget v8, v8, v11

    invoke-virtual {v5, v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/cjf;->veq:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-virtual {v5, v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/server/cjf;->veq:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v7, v9, :cond_8

    iget-object v9, v0, Lcom/android/server/cjf;->veq:[I

    aget v9, v9, v12

    if-ne v3, v9, :cond_8

    iget-object v9, v0, Lcom/android/server/cjf;->veq:[I

    aget v9, v9, v11

    if-ne v8, v9, :cond_8

    iget-object v9, v0, Lcom/android/server/cjf;->veq:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    if-eq v5, v9, :cond_2

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "/proc/skin_temp_thrd/fastchg_lcdoff_thd"

    invoke-static {v9, v6}, Lcom/android/server/cjf;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/cjf;->veq:[I

    const/4 v10, 0x0

    aput v7, v9, v10

    iget-object v7, v0, Lcom/android/server/cjf;->veq:[I

    aput v3, v7, v12

    iget-object v3, v0, Lcom/android/server/cjf;->veq:[I

    aput v8, v3, v11

    iget-object v3, v0, Lcom/android/server/cjf;->veq:[I

    const/4 v7, 0x3

    aput v5, v3, v7

    sget-boolean v3, Lcom/android/server/cjf;->qeg:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change charge power LCD off to"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_9
    iget-object v7, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v9, v0, Lcom/android/server/cjf;->lqr:[I

    aget v9, v9, v12

    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v9, v0, Lcom/android/server/cjf;->lqr:[I

    aget v9, v9, v11

    invoke-virtual {v5, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v13, 0x3

    aget v10, v10, v13

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v10, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v13, 0x4

    aget v10, v10, v13

    invoke-virtual {v5, v15, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    aget v13, v13, v16

    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ne v7, v13, :cond_a

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    aget v13, v13, v12

    if-ne v3, v13, :cond_a

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    aget v13, v13, v11

    if-ne v9, v13, :cond_a

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    if-ne v8, v13, :cond_a

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    if-ne v10, v13, :cond_a

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    aget v13, v13, v16

    if-eq v5, v13, :cond_2

    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "/proc/skin_temp_thrd/fastchg_thd"

    invoke-static {v13, v6}, Lcom/android/server/cjf;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v14, 0x0

    aput v7, v13, v14

    iget-object v7, v0, Lcom/android/server/cjf;->lqr:[I

    aput v3, v7, v12

    iget-object v3, v0, Lcom/android/server/cjf;->lqr:[I

    aput v9, v3, v11

    iget-object v3, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v7, 0x3

    aput v8, v3, v7

    iget-object v3, v0, Lcom/android/server/cjf;->lqr:[I

    const/4 v7, 0x4

    aput v10, v3, v7

    iget-object v3, v0, Lcom/android/server/cjf;->lqr:[I

    aput v5, v3, v16

    sget-boolean v3, Lcom/android/server/cjf;->qeg:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change charge power thermel to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_b
    new-array v3, v12, [I

    const/16 v7, 0xed

    const/4 v8, 0x0

    aput v7, v3, v8

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "reduce_power"

    iget-object v7, v0, Lcom/android/server/cjf;->fto:[I

    aget v7, v7, v8

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "increase_power"

    iget-object v8, v0, Lcom/android/server/cjf;->fto:[I

    aget v8, v8, v12

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v0, Lcom/android/server/cjf;->fto:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    if-ne v3, v7, :cond_c

    iget-object v7, v0, Lcom/android/server/cjf;->fto:[I

    aget v7, v7, v12

    if-eq v5, v7, :cond_2

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/proc/wireless/fast_skin_threld"

    invoke-static {v7, v6}, Lcom/android/server/cjf;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/cjf;->fto:[I

    const/4 v8, 0x0

    aput v3, v7, v8

    iget-object v3, v0, Lcom/android/server/cjf;->fto:[I

    aput v5, v3, v12

    sget-boolean v3, Lcom/android/server/cjf;->qeg:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change wireless charge thermel to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a7159de -> :sswitch_4
        -0x51f82c9c -> :sswitch_3
        -0x34fe5a8e -> :sswitch_2
        0x5e6263cd -> :sswitch_1
        0x7ad26d0c -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic cno(Lcom/android/server/cjf;)I
    .locals 0

    iget p0, p0, Lcom/android/server/cjf;->ibl:I

    return p0
.end method

.method static synthetic dma(Lcom/android/server/cjf;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cjf;->zgw:Ljava/lang/Object;

    return-object p0
.end method

.method private ear()V
    .locals 4

    sget-object p0, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "battery_light_low_color"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "battery_light_medium_color"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "battery_light_full_color"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sget-object v2, Lcom/android/server/cjf;->A:Lcom/android/server/cjf$bio;

    invoke-virtual {v2, v0, v1, p0}, Lcom/android/server/cjf$bio;->sis(III)V

    sget-object p0, Lcom/android/server/cjf;->A:Lcom/android/server/cjf$bio;

    invoke-virtual {p0}, Lcom/android/server/cjf$bio;->tsu()V

    return-void
.end method

.method static synthetic gck(Lcom/android/server/cjf;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cjf;->cjf(Lorg/json/JSONArray;)V

    return-void
.end method

.method private gwm()I
    .locals 6

    const-string p0, "get65WHotState io close exception :"

    const-string v0, "FastCharge"

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/fastchg_temp_status"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get65WHotState io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    const-string p0, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get65WHotState NumberFormatException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    :goto_3
    return p0

    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_5
    throw v1
.end method

.method public static hmo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "write sucess!"

    const-string v1, "FastCharge"

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method static synthetic ibl()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/cjf;->qeg:Z

    return v0
.end method

.method static synthetic igw(Lcom/android/server/cjf;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/cjf;->rtg:Z

    return p0
.end method

.method private ire()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/cjf;->cno:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cjf;->vdb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/cjf;->ssp:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/cjf;->ssp:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/cjf;->gck:Z

    if-eqz v0, :cond_1

    const-string v0, "/sys/class/power_supply/wireless/real_type"

    invoke-static {v0}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DASH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/cjf;->kth:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/cjf;->kth:Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/cjf;->dma:Z

    if-eqz v0, :cond_2

    const-string v0, "/proc/wireless/enable_tx"

    invoke-static {v0}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/cjf;->igw:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/cjf;->igw:Z

    :goto_2
    invoke-direct {p0}, Lcom/android/server/cjf;->ugm()I

    move-result v0

    iput v0, p0, Lcom/android/server/cjf;->oif:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read mChargeType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cjf;->oif:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FastCharge"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v3, 0xee

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/cjf;->oif:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v0, 0x2

    :cond_3
    iput v0, p0, Lcom/android/server/cjf;->oif:I

    :cond_4
    sget-boolean v0, Lcom/android/server/cjf;->qeg:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastChargeStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/cjf;->ssp:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method static synthetic kth(Lcom/android/server/cjf;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/cjf;->ssp:Z

    return p0
.end method

.method static synthetic oif(Lcom/android/server/cjf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cjf;->ire:Ljava/lang/String;

    return-object p1
.end method

.method public static oxb(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "BufferedReader close exception :"

    const-string v1, "FastCharge"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object p0, v2

    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readNodeValue IO exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    :goto_2
    return-object p0

    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw p0
.end method

.method static synthetic qbh(Lcom/android/server/cjf;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cjf;->ire:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/cjf;)I
    .locals 0

    iget p0, p0, Lcom/android/server/cjf;->you:I

    return p0
.end method

.method static synthetic sis()Lcom/android/server/cjf$bio;
    .locals 1

    sget-object v0, Lcom/android/server/cjf;->A:Lcom/android/server/cjf$bio;

    return-object v0
.end method

.method static synthetic ssp(Lcom/android/server/cjf;)I
    .locals 0

    iget p0, p0, Lcom/android/server/cjf;->sis:I

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/cjf;)I
    .locals 0

    iget p0, p0, Lcom/android/server/cjf;->gwm:I

    return p0
.end method

.method private ugm()I
    .locals 6

    const-string p0, "getFastChargeType io close exception :"

    const-string v0, "FastCharge"

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/enhance_dash"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFastChargeType io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    const-string p0, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFastChargeType NumberFormatException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    :goto_3
    sget-boolean v1, Lcom/android/server/cjf;->qeg:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FastChargeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0

    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw v1
.end method

.method private vdb()Z
    .locals 8

    const-string p0, "Failure in reading charger type"

    const-string v0, "Failure in close "

    const-string v1, "FastCharge"

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/fastchg_status"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v4, p0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1

    :catch_4
    move-exception v2

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v3

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    :try_start_4
    invoke-static {v1, p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    if-eqz v5, :cond_3

    goto :goto_0

    :catch_6
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    :try_start_6
    invoke-static {v1, p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    :goto_3
    return v4

    :catchall_2
    move-exception p0

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    throw p0
.end method

.method static synthetic wtn(Lcom/android/server/cjf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cjf;->rtg:Z

    return p1
.end method

.method static synthetic you(Lcom/android/server/cjf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cjf;->tsu:Z

    return p1
.end method

.method static synthetic ywr(Lcom/android/server/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cjf;->ear()V

    return-void
.end method

.method private synthetic zgw()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/cjf;->z:Landroid/content/Context;

    const-string v2, "OpFastCharge"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cjf;->cjf(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/cjf;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/cjf;->tsu:Z

    return p0
.end method


# virtual methods
.method public addIntentExtra(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    const/4 v6, 0x5

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    new-array v7, v4, [I

    const/16 v8, 0xed

    aput v8, v7, v5

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    const-string v9, "enable"

    const-string v10, "FastCharge"

    const/4 v11, 0x0

    if-eqz v7, :cond_e

    const-string v7, "level"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v11, 0x64

    mul-int/2addr v7, v11

    const-string v12, "scale"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    div-int/2addr v7, v11

    const-string v11, "temperature"

    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "0"

    const/16 v13, 0xf

    const-string v14, "reverse_wireless_disable_reason"

    const-string v15, "null"

    const-string v8, "/proc/wireless/enable_tx"

    if-gt v7, v13, :cond_4

    invoke-static {v8}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v4, v0, Lcom/android/server/cjf;->zta:Z

    invoke-static {v8, v12}, Lcom/android/server/cjf;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "level "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is less than 15%, disable reverse wireless charge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, v0, Lcom/android/server/cjf;->ire:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sget-object v3, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "low_power"

    invoke-static {v3, v14, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    const/16 v3, 0x1f4

    if-lt v11, v3, :cond_7

    invoke-static {v8}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v4, v0, Lcom/android/server/cjf;->zta:Z

    invoke-static {v8, v12}, Lcom/android/server/cjf;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temperature "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is over than 450, disable reverse wireless charge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Lcom/android/server/cjf;->ire:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    sget-object v3, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "temp_over_heat"

    invoke-static {v3, v14, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    if-le v7, v13, :cond_8

    const/16 v3, 0x1c2

    if-ge v11, v3, :cond_8

    iget-object v3, v0, Lcom/android/server/cjf;->ire:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v14, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/cjf;->zta:Z

    const-string v3, "reverse_wireless_disable_reason change to null"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v3, "/proc/wireless/deviated"

    invoke-static {v3}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "/sys/class/power_supply/wireless/online"

    invoke-static {v3}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "/sys/class/power_supply/wireless/real_type"

    invoke-static {v5}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/proc/wireless/quiet_mode"

    invoke-static {v8}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v0, Lcom/android/server/cjf;->cjf:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Lcom/android/server/cjf;->ear:Z

    if-ne v6, v12, :cond_9

    iget-boolean v12, v0, Lcom/android/server/cjf;->zta:Z

    if-eqz v12, :cond_c

    :cond_9
    sget-object v12, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "reverse_wireless_charging_status"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const-string v15, "disable"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v12, :cond_a

    :goto_2
    sget-object v12, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_a
    const-string v14, "charging"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x2

    if-eq v12, v14, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eq v12, v4, :cond_c

    sget-object v12, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    :goto_3
    iput-object v7, v0, Lcom/android/server/cjf;->cjf:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/android/server/cjf;->ear:Z

    sget-boolean v12, Lcom/android/server/cjf;->qeg:Z

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mChargeType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/cjf;->oif:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",wirelessStatus="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",wirelessType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",reverseWirelessCharge="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",deviatedWirelessCharge="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",quietMode="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object v2, v11

    move-object v11, v3

    goto :goto_4

    :cond_e
    move-object v2, v11

    move-object v5, v2

    move-object v7, v5

    move-object v8, v7

    :goto_4
    const-string v3, "sys/class/power_supply/usb/real_type"

    invoke-static {v3}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "USB_PD"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v6, :cond_f

    move v3, v4

    goto :goto_5

    :cond_f
    const/4 v3, 0x0

    :goto_5
    if-eqz v1, :cond_11

    iget-boolean v6, v0, Lcom/android/server/cjf;->ssp:Z

    const-string v12, "fast_charge"

    invoke-virtual {v1, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v6, v0, Lcom/android/server/cjf;->oif:I

    const-string v12, "fastcharge_status"

    invoke-virtual {v1, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set protect_charging = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    iget-boolean v12, v12, Lcom/android/server/cjf$ssp;->oxb:Z

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    iget-boolean v6, v6, Lcom/android/server/cjf$ssp;->oxb:Z

    const-string v10, "protect_charging"

    invoke-virtual {v1, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    if-eqz v6, :cond_10

    iget-boolean v10, v0, Lcom/android/server/cjf;->ssp:Z

    if-eqz v10, :cond_10

    iget v0, v0, Lcom/android/server/cjf;->oif:I

    if-eqz v0, :cond_10

    invoke-static {v6, v0}, Lcom/android/server/cjf$ssp;->zta(Lcom/android/server/cjf$ssp;I)J

    move-result-wide v12

    const-string v0, "estimate_time_to_full"

    invoke-virtual {v1, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_10
    const-string v0, "pd_charge"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-array v0, v4, [I

    const/16 v3, 0xed

    const/4 v4, 0x0

    aput v3, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v11, :cond_11

    if-eqz v5, :cond_11

    if-eqz v7, :cond_11

    if-eqz v8, :cond_11

    const-string v0, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "wireless_status"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "DASH"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "wireless_fastcharge_type"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "reverse_wireless_charge"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "deviated_wireless_charge"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "quiet_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_11
    return-void
.end method

.method public chargeVibration()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/cjf$rtg;

    invoke-direct {v1, p0}, Lcom/android/server/cjf$rtg;-><init>(Lcom/android/server/cjf;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getFastChargeStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/cjf;->ssp:Z

    return p0
.end method

.method public getLastFastChargeStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/cjf;->qbh:Z

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/cjf;->qeg:Z

    if-eqz v0, :cond_0

    const-string v0, "FastCharge"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/fastchg_status"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/cjf;->cno:Z

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/wireless/real_type"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/cjf;->gck:Z

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/wireless/enable_tx"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/cjf;->dma:Z

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/enhance_dash"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/server/cjf;->ywr:Z

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/server/cjf;->u:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/cjf;->fto:[I

    aget v2, v2, v1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_1
    sget-object v2, Lcom/android/server/cjf;->v:[I

    array-length v3, v2

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/cjf;->lqr:[I

    aget v2, v2, v1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_2
    sget-object v2, Lcom/android/server/cjf;->w:[I

    array-length v3, v2

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/cjf;->veq:[I

    aget v2, v2, v1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_3
    sget-object v2, Lcom/android/server/cjf;->x:[I

    array-length v3, v2

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/cjf;->cgv:[I

    aget v2, v2, v1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    sget-object v1, Lcom/android/server/cjf;->y:[I

    array-length v2, v1

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/server/cjf;->vju:[I

    aget v1, v1, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OnePlusFastCharge"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cjf;->bud:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/cjf;->les:Landroid/os/Handler;

    if-eqz p1, :cond_a

    sput-object p1, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0078

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/cjf;->ibl:I

    new-instance p2, Lcom/android/server/cjf$bio;

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/cjf$bio;-><init>(Lcom/android/server/cjf;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    sput-object p2, Lcom/android/server/cjf;->A:Lcom/android/server/cjf$bio;

    new-instance p1, Lcom/android/server/cjf$ssp;

    iget-object p2, p0, Lcom/android/server/cjf;->bud:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/cjf$ssp;-><init>(Lcom/android/server/cjf;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    :cond_a
    return-void
.end method

.method public synthetic obl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cjf;->zgw()V

    return-void
.end method

.method public registerObserver(ILandroid/os/Handler;)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x226

    if-ne p1, v1, :cond_3

    new-instance v1, Lcom/android/server/cjf$zta;

    const-string v2, "battery_led_low_power"

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/cjf$zta;-><init>(Lcom/android/server/cjf;Landroid/os/Handler;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/cjf$you;

    const-string v2, "battery_led_charging"

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/cjf$you;-><init>(Lcom/android/server/cjf;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xed

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cjf;->ugm:Lcom/android/server/cjf$kth;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/cjf$kth;

    sget-object v3, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/cjf$kth;-><init>(Lcom/android/server/cjf;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/server/cjf;->ugm:Lcom/android/server/cjf$kth;

    :cond_0
    iget-object v2, p0, Lcom/android/server/cjf;->vdb:Lcom/android/server/cjf$cno;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/cjf$cno;

    invoke-direct {v2, p0}, Lcom/android/server/cjf$cno;-><init>(Lcom/android/server/cjf;)V

    iput-object v2, p0, Lcom/android/server/cjf;->vdb:Lcom/android/server/cjf$cno;

    :cond_1
    sget-object v2, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "reverse_wireless_disable_reason"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/cjf;->ire:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/android/server/cjf;->zta:Z

    :cond_2
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    sget-object v2, Lcom/android/server/cjf;->z:Landroid/content/Context;

    new-instance v3, Lcom/android/server/cjf$sis;

    invoke-direct {v3, p0}, Lcom/android/server/cjf$sis;-><init>(Lcom/android/server/cjf;)V

    const-string v4, "OpFastCharge"

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/cjf;->hmo:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance v1, Lcom/android/server/cno;

    invoke-direct {v1, p0}, Lcom/android/server/cno;-><init>(Lcom/android/server/cjf;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/server/cjf;->zgw:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v1, Lcom/android/server/cjf$tsu;

    invoke-direct {v1, p0, p2}, Lcom/android/server/cjf$tsu;-><init>(Lcom/android/server/cjf;Landroid/os/Handler;)V

    sget-object p2, Lcom/android/server/cjf;->z:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "battery_light_low_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "battery_light_medium_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "battery_light_full_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/cjf;->ear()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public update(Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 4

    if-eqz p1, :cond_8

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/server/cjf;->gwm:I

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/server/cjf;->gwm:I

    goto :goto_1

    :cond_2
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/android/server/cjf;->gwm:I

    :goto_1
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Lcom/android/server/cjf;->you:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Lcom/android/server/cjf;->sis:I

    invoke-direct {p0}, Lcom/android/server/cjf;->ire()V

    new-array v0, v2, [I

    const/16 v3, 0xee

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/cjf;->gwm()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    iput-boolean v2, v0, Lcom/android/server/cjf$ssp;->oxb:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    iput-boolean v1, v0, Lcom/android/server/cjf$ssp;->oxb:Z

    :goto_2
    invoke-static {}, Lcom/android/server/lqr/you;->ivd()Lcom/android/server/lqr/you;

    move-result-object v0

    iget v1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-boolean p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/server/lqr/you;->p(IZ)V

    iget p1, p0, Lcom/android/server/cjf;->vdw:I

    iget v0, p0, Lcom/android/server/cjf;->oif:I

    if-ne p1, v0, :cond_5

    sget-boolean p1, Lcom/android/server/cjf;->qeg:Z

    if-eqz p1, :cond_6

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update() mChargeType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/cjf;->oif:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mBatteryLevel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/cjf;->you:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FastCharge"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget p1, p0, Lcom/android/server/cjf;->oif:I

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/server/cjf;->vdw:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    iget v0, p0, Lcom/android/server/cjf;->you:I

    invoke-virtual {p1, v0}, Lcom/android/server/cjf$ssp;->oif(I)Z

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/server/cjf;->irq:Lcom/android/server/cjf$ssp;

    invoke-static {p1}, Lcom/android/server/cjf$ssp;->you(Lcom/android/server/cjf$ssp;)V

    :goto_3
    iget p1, p0, Lcom/android/server/cjf;->oif:I

    iput p1, p0, Lcom/android/server/cjf;->vdw:I

    :cond_8
    :goto_4
    return-void
.end method

.method public updateLastFastChargeStatus()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/cjf;->qbh:Z

    iget-boolean v1, p0, Lcom/android/server/cjf;->ssp:Z

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/cjf;->qbh:Z

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/cjf;->bio:Z

    iget-boolean v3, p0, Lcom/android/server/cjf;->kth:Z

    if-eq v1, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/server/cjf;->bio:Z

    move v0, v2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/cjf;->wtn:Z

    iget-boolean v3, p0, Lcom/android/server/cjf;->igw:Z

    if-eq v1, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/server/cjf;->wtn:Z

    move v0, v2

    :cond_2
    iget v1, p0, Lcom/android/server/cjf;->bvj:I

    iget v3, p0, Lcom/android/server/cjf;->oif:I

    if-eq v1, v3, :cond_3

    iput v3, p0, Lcom/android/server/cjf;->bvj:I

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2
.end method

.method public updateLightsLocked()Z
    .locals 0

    sget-object p0, Lcom/android/server/cjf;->A:Lcom/android/server/cjf$bio;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cjf$bio;->tsu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
