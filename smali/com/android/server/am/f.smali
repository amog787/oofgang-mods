.class public Lcom/android/server/am/f;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/f$you;,
        Lcom/android/server/am/f$sis;
    }
.end annotation


# static fields
.field public static final bio:Ljava/lang/String; = "OpUfsController"

.field private static gck:Lcom/android/server/am/f; = null

.field private static final igw:Ljava/lang/String; = "vendor.sys.op.disable_ufstw"

.field public static wtn:Z


# instance fields
.field private cno:Lcom/oneplus/config/ConfigObserver;

.field private kth:Lcom/android/server/am/f$you;

.field private rtg:Landroid/content/Context;

.field private sis:Z

.field private ssp:Lcom/android/server/am/f$sis;

.field private tsu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private you:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x14f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/f;->wtn:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/f;->gck:Lcom/android/server/am/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/f;->you:Z

    sget-boolean v0, Lcom/android/server/am/f;->wtn:Z

    iput-boolean v0, p0, Lcom/android/server/am/f;->sis:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/f;->tsu:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/f$sis;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/f$sis;-><init>(Lcom/android/server/am/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/f;->ssp:Lcom/android/server/am/f$sis;

    new-instance v0, Lcom/android/server/am/f$you;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/f$you;-><init>(Lcom/android/server/am/f;Lcom/android/server/am/f$zta;)V

    iput-object v0, p0, Lcom/android/server/am/f;->kth:Lcom/android/server/am/f$you;

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->rtg:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {v0, p0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    return-void
.end method

.method private cjf()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/f;->you:Z

    const-string v1, "OpUfsController"

    if-eqz v0, :cond_0

    const-string v0, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/f;->rtg:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/am/f;->rtg:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/f;->kth:Lcom/android/server/am/f$you;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/f$you;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/am/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/f;->cjf()V

    return-void
.end method

.method private hmo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic ibl(Lcom/android/server/am/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/f;->ire()V

    return-void
.end method

.method private ire()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/f;->you:Z

    const-string v1, "OpUfsController"

    if-eqz v0, :cond_0

    const-string v0, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/f;->rtg:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/android/server/am/f;->rtg:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/f;->ssp:Lcom/android/server/am/f$sis;

    iget-object v4, p0, Lcom/android/server/am/f;->kth:Lcom/android/server/am/f$you;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/f;->cno:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method static synthetic obl(Lcom/android/server/am/f;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/f;->tsu:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static declared-synchronized oxb()Lcom/android/server/am/f;
    .locals 2

    const-class v0, Lcom/android/server/am/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/f;->gck:Lcom/android/server/am/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/f;

    invoke-direct {v1}, Lcom/android/server/am/f;-><init>()V

    sput-object v1, Lcom/android/server/am/f;->gck:Lcom/android/server/am/f;

    :cond_0
    sget-object v1, Lcom/android/server/am/f;->gck:Lcom/android/server/am/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic ugm(Lcom/android/server/am/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/f;->sis:Z

    return p0
.end method

.method static synthetic vdb(Lcom/android/server/am/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/f;->sis:Z

    return p1
.end method

.method static synthetic zgw(Lcom/android/server/am/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/f;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ear(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/f;->rtg:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/am/f;->ssp:Lcom/android/server/am/f$sis;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/f;->ssp:Lcom/android/server/am/f$sis;

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public ywr(ILjava/lang/String;Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/server/am/f;->sis:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/f;->tsu:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/f;->tsu:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/server/am/f;->you:Z

    if-eqz p0, :cond_1

    const-string p0, "OpUfsController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is in black list."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p1

    return-void

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    const-string p1, "1"

    goto :goto_0

    :cond_3
    const-string p1, "0"

    :goto_0
    const-string p2, "vendor.sys.op.disable_ufstw"

    invoke-direct {p0, p2, p1}, Lcom/android/server/am/f;->hmo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
