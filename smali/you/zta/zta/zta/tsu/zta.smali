.class Lyou/zta/zta/zta/tsu/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:Ljava/lang/String; = "diagandroid.app.receiveDetailedApplicationState"

.field private static final bvj:Ljava/lang/String; = "oemIntentTimestamp"

.field public static final cno:I = 0x3

.field private static final dma:Ljava/lang/String; = "START"

.field private static final gck:Ljava/lang/String; = "EXITED"

.field private static final gwm:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final ibl:Ljava/lang/String; = "USER_HALTED"

.field private static final igw:Ljava/lang/String; = "ApplicationPackageName"

.field private static final kth:Ljava/lang/String; = "diagandroid.app.ApplicationState"

.field private static final obl:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final oif:Ljava/lang/String; = "ApplicationTermReason"

.field private static final qbh:Ljava/lang/String; = "FOCUS_LOSS"

.field public static final rtg:I = 0x1

.field private static sis:Ljava/lang/String; = null

.field public static final ssp:I = 0x2

.field public static final tsu:I = 0x0

.field private static final ugm:Ljava/lang/String; = "ANR"

.field private static final vdb:Ljava/lang/String; = "CRASH"

.field private static final wtn:Ljava/lang/String; = "ApplicationState"

.field private static final you:Z

.field private static final ywr:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final zgw:[Ljava/lang/String;

.field private static final zta:Ljava/lang/String; = "AppStateBroadcaster"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lyou/zta/zta/zta/tsu/zta;->you:Z

    const/4 v0, 0x0

    sput-object v0, Lyou/zta/zta/zta/tsu/zta;->sis:Ljava/lang/String;

    const-string v0, "USER_HALTED"

    const-string v1, "NORMAL_SYSTEM_HALT"

    const-string v2, "ANR"

    const-string v3, "CRASH"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyou/zta/zta/zta/tsu/zta;->zgw:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/tsu/zta;->obl:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bio()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x44

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.boot.opcarrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tmo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method public static cno(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lyou/zta/zta/zta/tsu/zta;->bio()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lyou/zta/zta/zta/tsu/zta;->you:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendApplicationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStateBroadcaster"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lyou/zta/zta/zta/tsu/zta;->sis(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static kth(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lyou/zta/zta/zta/tsu/zta;->bio()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lyou/zta/zta/zta/tsu/zta;->you:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendApplicationStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStateBroadcaster"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    sget-object v0, Lyou/zta/zta/zta/tsu/zta;->zgw:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_4

    invoke-static {p1}, Lyou/zta/zta/zta/tsu/zta;->tsu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lyou/zta/zta/zta/tsu/zta;->zgw:[Ljava/lang/String;

    aget-object p2, v0, p2

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lyou/zta/zta/zta/tsu/zta;->zgw:[Ljava/lang/String;

    aget-object p2, v0, p2

    :goto_1
    invoke-static {p0, p1, p2}, Lyou/zta/zta/zta/tsu/zta;->zta(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static rtg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lyou/zta/zta/zta/tsu/zta;->bio()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lyou/zta/zta/zta/tsu/zta;->sis:Ljava/lang/String;

    if-eq v0, p1, :cond_3

    const-string v1, "AppStateBroadcaster"

    if-eqz v0, :cond_1

    const-string v0, "FOCUS_LOSS"

    invoke-static {p0, p1, v0}, Lyou/zta/zta/zta/tsu/zta;->you(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lyou/zta/zta/zta/tsu/zta;->you:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendApplicationFocusLoss:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lyou/zta/zta/zta/tsu/zta;->sis:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "FOCUS_GAIN"

    invoke-static {p0, p1, v0}, Lyou/zta/zta/zta/tsu/zta;->you(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lyou/zta/zta/zta/tsu/zta;->you:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendApplicationFocusGain:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sput-object p1, Lyou/zta/zta/zta/tsu/zta;->sis:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private static sis(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lyou/zta/zta/zta/tsu/zta;->obl:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyou/zta/zta/zta/tsu/zta;->obl:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "START"

    invoke-static {p0, p1, v1}, Lyou/zta/zta/zta/tsu/zta;->you(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ssp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lyou/zta/zta/zta/tsu/zta;->bio()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "FOCUS_LOSS"

    invoke-static {p0, p1, v0}, Lyou/zta/zta/zta/tsu/zta;->you(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static tsu(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lyou/zta/zta/zta/tsu/zta;->obl:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyou/zta/zta/zta/tsu/zta;->obl:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static you(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "EXITED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.app.ApplicationState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ApplicationState"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v1, "oemIntentTimestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static zta(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.app.ApplicationState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ApplicationPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ApplicationState"

    const-string v1, "EXITED"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ApplicationTermReason"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v1, "oemIntentTimestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
