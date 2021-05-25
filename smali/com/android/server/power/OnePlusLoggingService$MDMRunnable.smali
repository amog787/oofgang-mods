.class Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDMRunnable"
.end annotation


# static fields
.field private static final cno:I = -0x1

.field private static final rtg:Ljava/lang/String; = "usersleep"

.field private static final ssp:Ljava/lang/String; = "oc"

.field private static final tsu:Ljava/lang/String; = "NYNCG4I0TI"


# instance fields
.field private sis:Landroid/content/Context;

.field private you:Landroid/app/job/JobParameters;

.field private zta:Landroid/app/job/JobService;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zta(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->zta:Landroid/app/job/JobService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->you:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->zta()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->you()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run the scheduled job, elapsedTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->zta()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->you()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not report MDM this time!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->zta(Z)V

    return-void
.end method

.method public sis(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->zta:Landroid/app/job/JobService;

    iput-object p2, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->you:Landroid/app/job/JobParameters;

    return-void
.end method

.method public you(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->sis:Landroid/content/Context;

    return-void
.end method
