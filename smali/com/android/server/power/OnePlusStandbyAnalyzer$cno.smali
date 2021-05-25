.class Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0(IIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

.field final synthetic sis:I

.field final synthetic tsu:F

.field final synthetic you:I

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;IIIF)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->zta:I

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->you:I

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:I

    iput p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->tsu:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] start to diagnose, now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->zta:I

    iget v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->you:I

    iget v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sis:I

    iget v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->tsu:F

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i(Lcom/android/server/power/OnePlusStandbyAnalyzer;)F

    move-result v7

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J

    move-result-wide v8

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v10

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l1(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IIIFFJZ)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k1(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got exception while snapshot of end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
