.class public Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;
    }
.end annotation


# static fields
.field private static cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController; = null

.field private static kth:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final rtg:Ljava/lang/String; = "OemSceneFloatingWindowController"

.field public static final ssp:Z


# instance fields
.field private sis:Ljava/lang/Object;

.field private tsu:Z

.field private you:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->ssp:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->kth:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->sis:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->tsu:Z

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->zta:Landroid/content/Context;

    return-void
.end method

.method private bio(I)I
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception# forceStopPkg: error :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OemSceneFloatingWindowController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private igw(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->tsu:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$you;->rtg()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$you$zta;

    sget-object v1, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/OnePlusUtil$you$zta;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusUtil$you$tsu;

    iget v3, v2, Lcom/android/server/OnePlusUtil$you$tsu;->zta:I

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->bio(I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/OnePlusUtil$you$zta;->zta:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/OnePlusUtil$you$tsu;->zta:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusUtil$you$zta;->you:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " w*h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/OnePlusUtil$you$tsu;->you:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/OnePlusUtil$you$tsu;->sis:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", kill by zen mode"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OemSceneFloatingWindowController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->kth:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->bio(I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by zen mode!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneFloatingWindowController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->kth:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static kth(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    return-object p0
.end method

.method public static rtg(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    sget-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/scene/ESportMode;->isFnaticModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reject setAppOpVisibility in FnaticMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneFloatingWindowController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->ssp(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private sis(Ljava/lang/String;I)Z
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->sis:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->tsu:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ssp(Ljava/lang/String;I)Z
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->sis:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->tsu:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static tsu(Ljava/lang/String;II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->rtg(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->kth:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return p0
.end method

.method public static you(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->cno:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->sis(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->igw(Z)V

    return-void
.end method


# virtual methods
.method public cno()Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->you:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;-><init>(Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->you:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->you:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;

    return-object p0
.end method
