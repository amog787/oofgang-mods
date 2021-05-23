.class Lcom/android/server/oif$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "rtg"
.end annotation


# static fields
.field private static cno:Lcom/android/server/oif$rtg;


# instance fields
.field public rtg:J

.field public sis:J

.field public ssp:J

.field public tsu:J

.field private you:J

.field private zta:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->sis:J

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->tsu:J

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->rtg:J

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->ssp:J

    return-void
.end method

.method private static cno()Lcom/android/server/oif$rtg;
    .locals 1

    sget-object v0, Lcom/android/server/oif$rtg;->cno:Lcom/android/server/oif$rtg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/oif$rtg;

    invoke-direct {v0}, Lcom/android/server/oif$rtg;-><init>()V

    sput-object v0, Lcom/android/server/oif$rtg;->cno:Lcom/android/server/oif$rtg;

    :cond_0
    sget-object v0, Lcom/android/server/oif$rtg;->cno:Lcom/android/server/oif$rtg;

    return-object v0
.end method

.method static synthetic zta()Lcom/android/server/oif$rtg;
    .locals 1

    invoke-static {}, Lcom/android/server/oif$rtg;->cno()Lcom/android/server/oif$rtg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bio(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/oif$rtg;->you:J

    return-void
.end method

.method public kth(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/oif$rtg;->zta:J

    return-void
.end method

.method public rtg()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/oif$rtg;->you:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->you:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->tsu:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->tsu:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendedStartSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->you:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSuspendedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public sis()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/oif$rtg;->you:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->you:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->rtg:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->rtg:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendedStartSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->you:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusConChargingDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->rtg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public ssp()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->sis:J

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->tsu:J

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->rtg:J

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->ssp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalConnectedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->sis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSuspendedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusConChargingDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->rtg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusDisconnectedDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->ssp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/oif$rtg;->you:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->you:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->ssp:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->ssp:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendedStartSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->you:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSusDisconnectedDurSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->ssp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public you()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/oif$rtg;->zta:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->zta:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/oif$rtg;->sis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/oif$rtg;->sis:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPowerConnectStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->zta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalConnectedDurationSecs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/oif$rtg;->sis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
