.class Lcom/android/server/hmo$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field private rtg:J

.field private sis:I

.field final synthetic ssp:Lcom/android/server/hmo;

.field private tsu:Z

.field private you:I

.field private zta:I


# direct methods
.method constructor <init>(Lcom/android/server/hmo;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hmo$tsu;->ssp:Lcom/android/server/hmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/hmo$tsu;->zta:I

    iput p3, p0, Lcom/android/server/hmo$tsu;->you:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/hmo$tsu;->rtg:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/hmo;IIZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hmo$tsu;->ssp:Lcom/android/server/hmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/hmo$tsu;->zta:I

    iput p3, p0, Lcom/android/server/hmo$tsu;->you:I

    iput p5, p0, Lcom/android/server/hmo$tsu;->sis:I

    iput-boolean p4, p0, Lcom/android/server/hmo$tsu;->tsu:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/hmo$tsu;->rtg:J

    return-void
.end method


# virtual methods
.method rtg()I
    .locals 0

    iget p0, p0, Lcom/android/server/hmo$tsu;->you:I

    return p0
.end method

.method sis()I
    .locals 0

    iget p0, p0, Lcom/android/server/hmo$tsu;->sis:I

    return p0
.end method

.method ssp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/hmo$tsu;->rtg:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/hmo$tsu;->rtg:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatteryRecord {time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/hmo;->J:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", level="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/hmo$tsu;->zta:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", temp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/hmo$tsu;->you:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,charging="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/hmo$tsu;->tsu:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", plug="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/hmo$tsu;->sis:I

    invoke-virtual {p0, v0}, Lcom/android/server/hmo$tsu;->zta(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method tsu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/hmo$tsu;->tsu:Z

    return p0
.end method

.method you(J)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method zta(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "FAST_CHARGE"

    return-object p0

    :cond_1
    const-string p0, "WIRELESS"

    return-object p0

    :cond_2
    const-string p0, "USB"

    return-object p0

    :cond_3
    const-string p0, "AC"

    return-object p0
.end method
