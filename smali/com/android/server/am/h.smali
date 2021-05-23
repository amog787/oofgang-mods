.class public Lcom/android/server/am/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/h$zta;
    }
.end annotation


# static fields
.field protected static final bio:J = 0xea60L

.field private static final cno:Ljava/lang/String; = ""

.field protected static dma:I = 0x384

.field protected static gck:I = 0x8

.field protected static final igw:I = 0x8

.field private static final kth:I = -0x1

.field private static ssp:Lcom/android/server/am/h; = null

.field protected static wtn:J = 0xea60L


# instance fields
.field private rtg:Lcom/android/server/am/h$zta;

.field private sis:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected you:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zta:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/h;->zta:Lcom/android/server/am/ActivityManagerService;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/h;->you:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/h;->sis:Lcom/android/internal/app/ProcessMap;

    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/h;->tsu:Lcom/android/internal/app/ProcessMap;

    return-void
.end method

.method private synthetic rtg(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/h;->zta:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method private sis(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v0, Lcom/android/server/am/h;->dma:I

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isCanForceStopAbnormalProcess r.curAdj <= mThresholdAdj:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/h;->dma:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return v1

    :cond_0
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->wtn(I)I

    move-result p0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    const-string p0, "isCanForceStopAbnormalProcess r.getCurProcState() <= ActivityManager.PROCESS_STATE_BOUND_FOREGROUND_SERVICE, return false"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$zta;->tsu()I

    move-result p0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq p0, v0, :cond_3

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$you;->cno(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const-string p0, "isCanForceStopAbnormalProcess r.uid is fg, return false"

    goto :goto_0
.end method

.method private you(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/h;->sis(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/hmo;->r:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/tsu;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/tsu;-><init>(Lcom/android/server/am/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleAbnormalProcess forceStopPackage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static zta(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/h;
    .locals 1

    sget-object v0, Lcom/android/server/am/h;->ssp:Lcom/android/server/am/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/h;

    invoke-direct {v0, p0}, Lcom/android/server/am/h;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/h;->ssp:Lcom/android/server/am/h;

    :cond_0
    sget-object p0, Lcom/android/server/am/h;->ssp:Lcom/android/server/am/h;

    return-object p0
.end method


# virtual methods
.method protected cno(Lcom/android/server/am/ProcessRecord;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/h;->rtg:Lcom/android/server/am/h$zta;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/h$zta;

    invoke-direct {v0, p0}, Lcom/android/server/am/h$zta;-><init>(Lcom/android/server/am/h;)V

    iput-object v0, p0, Lcom/android/server/am/h;->rtg:Lcom/android/server/am/h$zta;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/h;->rtg:Lcom/android/server/am/h$zta;

    iget-object v0, v0, Lcom/android/server/am/h$zta;->you:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/h;->rtg:Lcom/android/server/am/h$zta;

    iget v1, v0, Lcom/android/server/am/h$zta;->sis:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/server/am/h$zta;->you(Lcom/android/server/am/h$zta;Ljava/lang/String;IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/h;->rtg:Lcom/android/server/am/h$zta;

    invoke-static {v0, p2, p3}, Lcom/android/server/am/h$zta;->sis(Lcom/android/server/am/h$zta;J)V

    iget-object p2, p0, Lcom/android/server/am/h;->rtg:Lcom/android/server/am/h$zta;

    invoke-static {p2}, Lcom/android/server/am/h$zta;->tsu(Lcom/android/server/am/h$zta;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "trackAbnormalKilledProcessByOrder"

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/h;->you(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/h;->rtg:Lcom/android/server/am/h$zta;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/am/h$zta;->zta(Lcom/android/server/am/h$zta;Ljava/lang/String;IJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected kth(Lcom/android/server/am/ProcessRecord;J)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/h;->sis:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/server/am/h;->tsu:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p2, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p2, v3

    sget-wide v7, Lcom/android/server/am/h;->wtn:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackAbnormalKilledProcessByTime count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/android/server/am/h;->gck:I

    if-lt v0, v2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/h;->sis:Lcom/android/internal/app/ProcessMap;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/am/h;->tsu:Lcom/android/internal/app/ProcessMap;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    const-string p2, "trackAbnormalKilledProcessByTime"

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/h;->you(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/h;->sis:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/h;->tsu:Lcom/android/internal/app/ProcessMap;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p2, v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p2, v0

    sget-wide v3, Lcom/android/server/am/h;->wtn:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/h;->sis:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/h;->sis:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    :goto_1
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/h;->tsu:Lcom/android/internal/app/ProcessMap;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic ssp(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/h;->rtg(Ljava/lang/String;)V

    return-void
.end method

.method protected tsu(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/hmo;->irq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCareProcess:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " battery optimization is whitelist, return false"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return v0

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/h;->you:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/h;->you:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCareProcess:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is abnormalKilledWhiteList, return false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    monitor-exit v1

    return v0

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v1, Lcom/android/server/am/h;->dma:I

    if-ge p0, v1, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCareProcess:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " curAdj Smaller than mThresholdAdj:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/h;->dma:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return false"

    goto :goto_0

    :cond_7
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_1
    return v0
.end method
