.class Lcom/android/server/pm/InstalledAppLoggingService$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/InstalledAppLoggingService;->rtg(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Landroid/app/job/JobScheduler;

.field final synthetic zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/job/JobScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstalledAppLoggingService$zta;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/InstalledAppLoggingService$zta;->you:Landroid/app/job/JobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;

    invoke-direct {v0}, Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/InstalledAppLoggingService$zta;->zta:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstalledAppLoggingService$MDMRunnable;->sis(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/pm/InstalledAppLoggingService$zta;->you:Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-static {}, Lcom/android/server/pm/InstalledAppLoggingService;->you()Landroid/content/ComponentName;

    move-result-object v1

    const v2, 0x59408801

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-static {}, Lcom/android/server/pm/InstalledAppLoggingService;->zta()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
