.class Lcom/android/server/am/OnePlusHighPowerDetector$dma;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dma"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/am/OnePlusHighPowerDetector;

.field private you:I

.field private zta:J


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;JI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->sis:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    iput p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you:I

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->tsu(JI)V

    return-void
.end method


# virtual methods
.method public sis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# SuggestionInterval ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu(JI)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Update suggestion_info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ohpd_suggestion_info"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public you()Z
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPopCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you:I

    const/4 v4, 0x0

    const-string v5, "Notification # too short time to notify suggestion: "

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ge v2, v7, :cond_1

    iget-wide v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    sub-long v7, v0, v7

    sget-wide v9, Lcom/android/server/am/OnePlusHighPowerDetector;->D0:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    sub-long/2addr v0, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    add-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->tsu(JI)V

    return v6

    :cond_1
    iget-wide v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    sub-long v7, v0, v7

    sget-wide v9, Lcom/android/server/am/OnePlusHighPowerDetector;->D0:J

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->C0:I

    int-to-long v11, v2

    mul-long/2addr v9, v11

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    iput v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you:I

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->tsu(JI)V

    return v6
.end method

.method public zta()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta:J

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->tsu(JI)V

    return-void
.end method
