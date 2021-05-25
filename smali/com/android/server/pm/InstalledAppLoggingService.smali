.class public Lcom/android/server/pm/InstalledAppLoggingService;
.super Landroid/app/job/JobService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;
    }
.end annotation


# static fields
.field private static final rtg:I = 0x59408801

.field private static final sis:Z

.field private static ssp:Landroid/content/ComponentName;

.field private static tsu:J

.field private static final you:Z

.field private static final zta:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/pm/InstalledAppLoggingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/InstalledAppLoggingService;->you:Z

    const-string v0, "persist.sys.debug_report"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/InstalledAppLoggingService;->sis:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/InstalledAppLoggingService;->tsu:J

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/InstalledAppLoggingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/InstalledAppLoggingService;->ssp:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static rtg(Landroid/content/Context;)V
    .locals 6

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    const-string v0, "JobScheduler hasn\'t published yet"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/pm/InstalledAppLoggingService;->ssp()Z

    move-result v1

    const v2, 0x59408801

    if-eqz v1, :cond_2

    sget-boolean p0, Lcom/android/server/pm/InstalledAppLoggingService;->you:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    const-string v1, "cancel this jobservice"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/InstalledAppLoggingService;->sis:Z

    if-eqz v2, :cond_3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    sget-wide v2, Lcom/android/server/pm/InstalledAppLoggingService;->tsu:J

    :goto_0
    sput-wide v2, Lcom/android/server/pm/InstalledAppLoggingService;->tsu:J

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/pm/InstalledAppLoggingService;->tsu:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_4
    sget-boolean v1, Lcom/android/server/pm/InstalledAppLoggingService;->you:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", INTERVAL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/pm/InstalledAppLoggingService;->tsu:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/pm/InstalledAppLoggingService$zta;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/InstalledAppLoggingService$zta;-><init>(Landroid/content/Context;Landroid/app/job/JobScheduler;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method static synthetic sis()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/pm/InstalledAppLoggingService;->you:Z

    return v0
.end method

.method private static ssp()Z
    .locals 2

    const/16 v0, 0xd0

    const-string v1, "dont_collect_installed_app"

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/pm/InstalledAppLoggingService;->you:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    const-string v1, "JobScheduler is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/pm/InstalledAppLoggingService;->you:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    const-string v1, "JobScheduler is enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic tsu()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pm/InstalledAppLoggingService;->zta:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic you()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/pm/InstalledAppLoggingService;->ssp:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic zta()J
    .locals 2

    sget-wide v0, Lcom/android/server/pm/InstalledAppLoggingService;->tsu:J

    return-wide v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    invoke-static {}, Lcom/android/server/pm/InstalledAppLoggingService;->ssp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1

    :cond_0
    new-instance v0, Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;

    invoke-direct {v0}, Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;->tsu(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;->sis(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
