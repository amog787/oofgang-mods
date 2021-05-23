.class Lcom/android/server/am/wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/wtn$zta;
    }
.end annotation


# static fields
.field private static rtg:Lcom/android/server/am/wtn; = null

.field public static final tsu:Ljava/lang/String; = "AppRecordManager"


# instance fields
.field private sis:Landroid/os/HandlerThread;

.field private you:Lcom/android/server/am/wtn$zta;

.field private zta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/AppRecordManager$ListenerType;",
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/qbh;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/wtn;->sis:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppRecordListenerManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/wtn;->sis:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/wtn$zta;

    iget-object v1, p0, Lcom/android/server/am/wtn;->sis:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/wtn$zta;-><init>(Lcom/android/server/am/wtn;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-static {}, Lcom/android/server/am/AppRecordManager$ListenerType;->values()[Lcom/android/server/am/AppRecordManager$ListenerType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private igw(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "pkg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "act"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/qbh;

    invoke-interface {v4, p1, v2, v0, v1}, Lcom/android/server/am/qbh;->rtg(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static rtg()Lcom/android/server/am/wtn;
    .locals 1

    sget-object v0, Lcom/android/server/am/wtn;->rtg:Lcom/android/server/am/wtn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/wtn;

    invoke-direct {v0}, Lcom/android/server/am/wtn;-><init>()V

    sput-object v0, Lcom/android/server/am/wtn;->rtg:Lcom/android/server/am/wtn;

    :cond_0
    sget-object v0, Lcom/android/server/am/wtn;->rtg:Lcom/android/server/am/wtn;

    return-object v0
.end method

.method static synthetic sis(Lcom/android/server/am/wtn;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    return-object p0
.end method

.method private static ssp(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/wtn;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/wtn;->igw(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic zta(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/wtn;->ssp(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bio(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->qbh:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->qbh:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isFreeze"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bvj(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->igw:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->igw:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->igw:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "procState"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cjf(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cno(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ugm:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ugm:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isConnected"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dma(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isHighUsedApp"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public ear(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public gck(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pid"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "lpkg"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "luid"

    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "lpid"

    invoke-virtual {v1, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public gwm(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "state"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public ibl(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->oif:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->oif:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pkg"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "procName"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isProcessStart"

    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "killReason"

    invoke-virtual {v1, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "diedAdj"

    invoke-virtual {v1, p1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public kth(Ljava/lang/String;IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->oxb:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->oxb:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pid"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "hasFloatWin"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public obl(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pkg"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "using"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "from"

    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public oif(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->dma:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->dma:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isPredctionApp"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public oxb(Lcom/android/server/am/AppRecordManager$ListenerType;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "using"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public qbh(IIJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->gck:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->gck:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pss"

    invoke-virtual {v1, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppRecordListenerManager:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\ttype size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/AppRecordManager$ListenerType;->values()[Lcom/android/server/am/AppRecordManager$ListenerType;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v4, "\t  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", listener size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/qbh;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "===============================\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu()V
    .locals 6

    const-string v0, "AppRecordManager"

    const-string v1, "==============================="

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "AppRecordListenerManager:"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ttype size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/AppRecordManager$ListenerType;->values()[Lcom/android/server/am/AppRecordManager$ListenerType;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", listener size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/qbh;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ugm(Ljava/lang/String;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ibl:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ibl:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isUserLock"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public vdb(Lcom/android/server/am/AppRecordManager$ListenerType;IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pid"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "using"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public wtn(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "act"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pkg"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pid"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public ywr(Ljava/lang/String;IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pid"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "hasNoClear"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zgw(Lcom/android/server/am/AppRecordManager$ListenerType;ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/wtn;->zta:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/AppRecordManager$ListenerType;->zta()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pkg"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "using"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Lcom/android/server/am/wtn$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
