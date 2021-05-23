.class final Lcom/android/server/am/OnePlusMemoryTracker$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "rtg"
.end annotation


# instance fields
.field final cno:Z

.field kth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusMemoryTracker$rtg;",
            ">;"
        }
    .end annotation
.end field

.field final rtg:J

.field final sis:Ljava/lang/String;

.field final ssp:I

.field final tsu:J

.field final you:Ljava/lang/String;

.field final zta:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->zta:Z

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->you:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->sis:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->tsu:J

    iput-wide p5, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->rtg:J

    iput p7, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->ssp:I

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->cno:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->zta:Z

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->you:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->sis:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->tsu:J

    iput-wide p5, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->rtg:J

    iput p7, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->ssp:I

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->cno:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->zta:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->tsu:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->you:Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "%16dk: %s\n"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->tsu:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->you:Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "%12dk: %s\n"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
