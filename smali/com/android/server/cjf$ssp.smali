.class Lcom/android/server/cjf$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# static fields
.field static final a:J = 0x7d0L

.field static final bud:Ljava/lang/String; = "estimate_time_to_full"

.field static final cgv:Ljava/lang/String; = "estimate_next_remain"

.field static final fto:Ljava/lang/String; = "/sys/class/power_supply/bms/remaining_capacity"

.field static final hmo:Ljava/lang/String; = "/sys/class/power_supply/battery/current_now"

.field static final ire:Ljava/lang/String; = "BatteryDecimalEstimate"

.field static final irq:F = 0.1f

.field static final ivd:J = 0x2bf20L

.field static final les:F = 0.2f

.field static final lqr:Ljava/lang/String; = "/sys/class/power_supply/bms/charge_full"

.field static final qeg:F = 0.95f

.field static final vdw:F = 0.4999f

.field static final veq:Ljava/lang/String; = "estimate_remain"

.field static final vju:Ljava/lang/String; = "estimate_time"


# instance fields
.field bio:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field bvj:J

.field private cjf:Ljava/lang/Runnable;

.field cno:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field dma:J

.field final synthetic ear:Lcom/android/server/cjf;

.field gck:Ljava/text/DecimalFormat;

.field gwm:F

.field ibl:I

.field igw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap;",
            ">;"
        }
    .end annotation
.end field

.field kth:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field obl:[I

.field oif:F

.field oxb:Z

.field qbh:F

.field rtg:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field sis:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ssp:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field tsu:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field ugm:F

.field vdb:F

.field wtn:Landroid/content/Intent;

.field you:Landroid/content/Context;

.field ywr:F

.field zgw:Z

.field zta:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/server/cjf;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.BATTERY_LEVEL_DECIMAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/cjf$ssp;->wtn:Landroid/content/Intent;

    new-instance p1, Lcom/android/server/cjf$ssp$zta;

    invoke-direct {p1, p0}, Lcom/android/server/cjf$ssp$zta;-><init>(Lcom/android/server/cjf$ssp;)V

    iput-object p1, p0, Lcom/android/server/cjf$ssp;->cjf:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/cjf$ssp;->zta:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/cjf$ssp;->you:Landroid/content/Context;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/cjf$ssp;->oxb:Z

    const-wide/16 p2, 0x7d0

    iput-wide p2, p0, Lcom/android/server/cjf$ssp;->bvj:J

    iput-boolean p1, p0, Lcom/android/server/cjf$ssp;->zgw:Z

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "00.00"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/cjf$ssp;->gck:Ljava/text/DecimalFormat;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->wtn:Landroid/content/Intent;

    const-string p2, "com.android.systemui"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x189c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x15e0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x13ec

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x11f3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x421c0000    # 39.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0xffa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x42340000    # 45.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0xdfc

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x42a60000    # 83.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0xc00

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x42b00000    # 88.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0xa00

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x7fe

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x42ba0000    # 93.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x600

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    const/high16 p2, 0x42c20000    # 97.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x4b0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->wtn()V

    return-void
.end method

.method private bio()V
    .locals 5

    iget v0, p0, Lcom/android/server/cjf$ssp;->vdb:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/server/cjf$ssp;->ywr:F

    float-to-int v2, v1

    if-eq v0, v2, :cond_0

    int-to-float v2, v0

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/android/server/cjf$ssp;->ugm:F

    div-float/2addr v2, v1

    iget-wide v3, p0, Lcom/android/server/cjf$ssp;->bvj:J

    long-to-float v1, v3

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/cjf$ssp;->bvj:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/cjf$ssp;->bvj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms later there will be a level change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private bvj()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cjf$ssp;->zgw:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cjf$ssp;->dma:J

    :try_start_0
    const-string v0, "/sys/class/power_supply/bms/remaining_capacity"

    invoke-static {v0}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/android/server/cjf$ssp;->gwm:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/cjf$ssp;->oif:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read mReadBatteryWhenExit error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryDecimalEstimate"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "estimate battery decimal, off"

    invoke-direct {p0, v0}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    return-void
.end method

.method private cno(II)J
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/cjf$ssp;->igw(I)V

    const/16 p2, 0x64

    const/16 v0, 0x5f

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    if-le p1, v0, :cond_0

    sub-int/2addr p2, p1

    iget-object p0, p0, Lcom/android/server/cjf$ssp;->obl:[I

    aget p0, p0, v1

    mul-int/2addr p2, p0

    int-to-long p0, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const/16 v2, 0x5a

    if-gt p1, v0, :cond_1

    if-le p1, v2, :cond_1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/server/cjf$ssp;->obl:[I

    aget p1, p0, p2

    mul-int/2addr v0, p1

    aget p0, p0, v1

    mul-int/lit8 p0, p0, 0x5

    add-int/2addr v0, p0

    int-to-long p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/16 v3, 0x50

    if-gt p1, v2, :cond_2

    if-le p1, v3, :cond_2

    sub-int/2addr v2, p1

    iget-object p0, p0, Lcom/android/server/cjf$ssp;->obl:[I

    aget p1, p0, v0

    mul-int/2addr v2, p1

    aget p1, p0, p2

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr v2, p1

    aget p0, p0, v1

    mul-int/lit8 p0, p0, 0x5

    add-int/2addr v2, p0

    int-to-long p0, v2

    goto :goto_0

    :cond_2
    sub-int/2addr v3, p1

    iget-object p0, p0, Lcom/android/server/cjf$ssp;->obl:[I

    const/4 p1, 0x3

    aget p1, p0, p1

    mul-int/2addr v3, p1

    aget p1, p0, v0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr v3, p1

    aget p1, p0, p2

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr v3, p1

    aget p0, p0, v1

    mul-int/lit8 p0, p0, 0x5

    add-int/2addr v3, p0

    int-to-long p0, v3

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "estimateTimeToFullByPercent toFulltime = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryDecimalEstimate"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method private synthetic dma()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/cjf$ssp;->wtn:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private gck(FF)Z
    .locals 2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private igw(I)V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/cjf$ssp;->obl:[I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x3c

    const/16 v5, 0x78

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v7, :cond_0

    aput v5, v1, v6

    aput v4, v1, v7

    const/16 v8, 0x32

    aput v8, v1, v3

    const/16 v8, 0x2a

    aput v8, v1, v2

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/cjf$ssp;->obl:[I

    aput v5, p0, v6

    aput v4, p0, v7

    const/16 p1, 0x1e

    aput p1, p0, v3

    const/16 p1, 0xf

    aput p1, p0, v2

    :cond_1
    return-void
.end method

.method private kth()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fakeBatteryChanged mEstimatedBatteryDecimal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mBatteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v1}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEstimatedBatteryNext = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cjf$ssp;->vdb:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryDecimalEstimate"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->wtn:Landroid/content/Intent;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/cjf;->ibl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBatteryLevel = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v3}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mEstimatedBatteryDecimal = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/server/cjf$ssp;->ywr:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v3, p0, Lcom/android/server/cjf$ssp;->ywr:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/server/cjf$ssp;->ywr:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v0, v0, v3

    const-string v3, "set mEstimatedBatteryDecimal = "

    if-lez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    iget v4, p0, Lcom/android/server/cjf$ssp;->ywr:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v4}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/android/server/cjf$ssp;->ugm:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/server/cjf$ssp;->ugm:F

    iget v3, p0, Lcom/android/server/cjf$ssp;->ugm:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/cjf$ssp;->ugm:F

    :cond_3
    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    iget v3, p0, Lcom/android/server/cjf$ssp;->ugm:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/cjf$ssp;->vdb:F

    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/server/cjf$ssp;->vdb:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_5

    const-string v0, "mEstimatedBatteryNext - 0.1f"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/cjf$ssp;->vdb:F

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/cjf$ssp;->vdb:F

    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    iput v3, p0, Lcom/android/server/cjf$ssp;->ywr:F

    iput v3, p0, Lcom/android/server/cjf$ssp;->vdb:F

    :cond_6
    iget-object v0, p0, Lcom/android/server/cjf$ssp;->wtn:Landroid/content/Intent;

    const-string v4, "estimate_remain"

    iget v5, p0, Lcom/android/server/cjf$ssp;->ywr:F

    mul-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->wtn:Landroid/content/Intent;

    const-string v4, "estimate_next_remain"

    iget v5, p0, Lcom/android/server/cjf$ssp;->vdb:F

    mul-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fatal when battery changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/android/server/cjf$ssp;->wtn:Landroid/content/Intent;

    iget-wide v3, p0, Lcom/android/server/cjf$ssp;->bvj:J

    const-string v5, "estimate_time"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEstimatedBatteryDecima = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cjf$ssp;->vdb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mEstimateDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/cjf$ssp;->bvj:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->bio(Lcom/android/server/cjf;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ssp;

    invoke-direct {v1, p0}, Lcom/android/server/ssp;-><init>(Lcom/android/server/cjf$ssp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_7
    const-string v0, "no mStashBatteryChangedBroadcast"

    invoke-direct {p0, v0}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private qbh()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "/sys/class/power_supply/bms/remaining_capacity"

    invoke-static {v0}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/power_supply/battery/current_now"

    invoke-static {v1}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/android/server/cjf$ssp;->ibl:I

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/android/server/cjf$ssp;->gwm:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/cjf$ssp;->qbh:F

    iget v0, p0, Lcom/android/server/cjf$ssp;->ibl:I

    iget-wide v1, p0, Lcom/android/server/cjf$ssp;->bvj:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/cjf$ssp;->rtg(IJ)F

    move-result v0

    iput v0, p0, Lcom/android/server/cjf$ssp;->ugm:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readBatteryInfo: mCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cjf$ssp;->ibl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mA; mReadBatteryDecimal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cjf$ssp;->qbh:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; mEstimatedIncrement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cjf$ssp;->ugm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    return-void
.end method

.method private rtg(IJ)F
    .locals 2

    int-to-long v0, p1

    mul-long/2addr v0, p2

    const-wide/16 p1, 0xa

    div-long/2addr v0, p1

    const-wide/16 p1, 0x3c

    div-long/2addr v0, p1

    div-long/2addr v0, p1

    long-to-float p1, v0

    iget p0, p0, Lcom/android/server/cjf$ssp;->gwm:F

    div-float/2addr p1, p0

    return p1
.end method

.method private sis(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "BatteryDecimalEstimate"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private ssp(I)J
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stimateTimeToFull() type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryDecimalEstimate"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xee

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-wide v3

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->qbh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    iget v1, p0, Lcom/android/server/cjf$ssp;->qbh:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    iget v5, p0, Lcom/android/server/cjf$ssp;->qbh:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/server/cjf$ssp;->ibl:I

    if-nez v5, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_0
    iget v5, p0, Lcom/android/server/cjf$ssp;->qbh:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Lcom/android/server/cjf$ssp;->qbh:F

    sub-float/2addr v6, v7

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-float v0, v2

    mul-float/2addr v0, v6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-long v0, v0

    mul-float/2addr v6, v4

    float-to-long v2, v6

    add-long/2addr v0, v2

    add-long/2addr v0, v7

    iget-object v2, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v2}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/cjf$ssp;->cno(II)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :cond_4
    :goto_1
    move-wide v3, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/cjf$ssp;->ear:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->rtg(Lcom/android/server/cjf;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/cjf$ssp;->cno(II)J

    move-result-wide v3

    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "estimateTimeToFull: mReadBatteryDecimal="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/cjf$ssp;->qbh:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "; timeToFull="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    return-wide v3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read battery info error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private wtn()V
    .locals 14

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf$ssp;->rtg:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf$ssp;->ssp:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf$ssp;->cno:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf$ssp;->bio:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-wide/16 v2, 0x85c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-wide/16 v3, 0x7e9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-wide/16 v4, 0x78f

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-wide/16 v5, 0x758

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-wide/16 v6, 0x631

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v6, 0x42340000    # 45.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-wide/16 v7, 0x5b9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v7, 0x42a60000    # 83.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-wide/16 v8, 0x2df

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v8, 0x42b00000    # 88.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-wide/16 v9, 0x253

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-wide/16 v10, 0x203

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v10, 0x42ba0000    # 93.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-wide/16 v11, 0x190

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    const/high16 v11, 0x42c20000    # 97.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-wide/16 v12, 0xeb

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v12, 0x1167

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v12, 0x1011

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0xf2d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0xe92

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0xb85

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0xa85

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0x424

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0x34e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0x2f5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0x26a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    const-wide/16 v1, 0x152

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cjf$ssp;->tsu:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cjf$ssp;->rtg:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cjf$ssp;->ssp:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cjf$ssp;->cno:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cjf$ssp;->kth:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/cjf$ssp;->igw:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/cjf$ssp;->bio:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic you(Lcom/android/server/cjf$ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->bvj()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/cjf$ssp;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cjf$ssp;->ssp(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method oif(I)Z
    .locals 4

    const-string v0, "/sys/class/power_supply/bms/charge_full"

    invoke-static {v0}, Lcom/android/server/cjf;->oxb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/cjf$ssp;->gwm:F

    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->qbh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/cjf$ssp;->gck(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/cjf$ssp;->ywr:F

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/cjf$ssp;->dma:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const-string v0, "current charging time is 3 mins less than last charging time"

    invoke-direct {p0, v0}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cjf$ssp;->qbh:F

    iget v1, p0, Lcom/android/server/cjf$ssp;->oif:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/server/cjf$ssp;->ywr:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/cjf$ssp;->ywr:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery offset more than 0.2%, adjust mEstimatedBatteryDecimal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    :cond_1
    int-to-float p1, p1

    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iput p1, p0, Lcom/android/server/cjf$ssp;->ywr:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "estimated value is too different from the broadcast value, adjust mEstimatedBatteryDecimal="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/cjf$ssp;->tsu()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryDecimalEstimate"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method tsu()V
    .locals 4

    const-string v0, "BatteryDecimalEstimate"

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->qbh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget v1, p0, Lcom/android/server/cjf$ssp;->ugm:F

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/android/server/cjf$ssp;->sis:Ljava/util/TreeMap;

    iget v3, p0, Lcom/android/server/cjf$ssp;->qbh:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, p0, Lcom/android/server/cjf$ssp;->bvj:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/cjf$ssp;->rtg(IJ)F

    move-result v1

    iput v1, p0, Lcom/android/server/cjf$ssp;->ugm:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    iget v1, p0, Lcom/android/server/cjf$ssp;->qbh:F

    sub-float/2addr v0, v1

    const v1, 0x3efff2e5    # 0.4999f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "double duration:mEstimatedBatteryDecimal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cjf$ssp;->ywr:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mReadBatteryDecimal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cjf$ssp;->qbh:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    const-wide/16 v1, 0xfa0

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x7d0

    :goto_1
    iput-wide v1, p0, Lcom/android/server/cjf$ssp;->bvj:J

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/cjf$ssp;->ugm:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/cjf$ssp;->ugm:F

    :cond_2
    iget v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    iget v1, p0, Lcom/android/server/cjf$ssp;->ugm:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/cjf$ssp;->vdb:F

    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->bio()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEstimateDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cjf$ssp;->bvj:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEstimatedIncrement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cjf$ssp;->ugm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cjf$ssp;->sis(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->kth()V

    iget v0, p0, Lcom/android/server/cjf$ssp;->vdb:F

    iput v0, p0, Lcom/android/server/cjf$ssp;->ywr:F

    return-void

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "estimate battery decimal error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic ywr()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cjf$ssp;->dma()V

    return-void
.end method
