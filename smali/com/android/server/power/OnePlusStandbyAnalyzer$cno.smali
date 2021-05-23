.class Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0(IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

.field final synthetic you:F

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->zta:I

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->you:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta()Z

    move-result v0

    const-string v1, "OPSA"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] start to diagnose, now="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    iget v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->zta:I

    iget v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->you:F

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq(Lcom/android/server/power/OnePlusStandbyAnalyzer;)F

    move-result v7

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J

    move-result-wide v8

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;IFFJZ)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got exception while snapshot of end:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
