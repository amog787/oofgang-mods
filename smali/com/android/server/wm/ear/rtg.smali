.class public Lcom/android/server/wm/ear/rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ear/rtg$you;,
        Lcom/android/server/wm/ear/rtg$sis;,
        Lcom/android/server/wm/ear/rtg$rtg;,
        Lcom/android/server/wm/ear/rtg$ssp;,
        Lcom/android/server/wm/ear/rtg$tsu;
    }
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "appsnapshots"

.field private static final dma:I = 0x2

.field private static final gck:Ljava/lang/String; = ".jpg"

.field private static final igw:J = 0x64L

.field private static final wtn:I = 0x5f


# instance fields
.field private final cno:Lcom/android/server/wm/ear/rtg$tsu;

.field private kth:Ljava/lang/Thread;

.field private rtg:Z

.field private sis:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final ssp:Ljava/lang/Object;

.field private tsu:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final you:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/ear/rtg$rtg;",
            ">;"
        }
    .end annotation
.end field

.field private final zta:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/ear/rtg$ssp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ear/rtg$tsu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ear/rtg;->zta:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ear/rtg;->you:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/ear/rtg$zta;

    const-string v1, "AppSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ear/rtg$zta;-><init>(Lcom/android/server/wm/ear/rtg;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ear/rtg;->kth:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/android/server/wm/ear/rtg;->cno:Lcom/android/server/wm/ear/rtg$tsu;

    return-void
.end method

.method static synthetic bio(Lcom/android/server/wm/ear/rtg;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ear/rtg;->dma(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/wm/ear/rtg;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ear/rtg;->wtn(I)Z

    move-result p0

    return p0
.end method

.method private dma(ILjava/lang/String;)V
    .locals 3

    const-string v0, ",userId =: "

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ear/rtg;->qbh(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSnapshot surcess packageName =: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSnapshot fail packageName =: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",error =: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ear/cno;->cno(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private gck(I)V
    .locals 7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ear/rtg;->oif(I)Ljava/io/File;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllSnapshotsForUser userId =: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",fileNumber = : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",spend time = : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllSnapshotsForUser fail userId =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",error =: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ear/cno;->cno(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private gwm(Lcom/android/server/wm/ear/rtg$ssp;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg;->zta:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/wm/ear/rtg$ssp;->you()V

    invoke-direct {p0}, Lcom/android/server/wm/ear/rtg;->ywr()V

    iget-object p1, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/ear/rtg;->tsu:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic kth(Lcom/android/server/wm/ear/rtg;I)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ear/rtg;->oif(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private oif(I)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg;->cno:Lcom/android/server/wm/ear/rtg$tsu;

    invoke-interface {p0, p1}, Lcom/android/server/wm/ear/rtg$tsu;->zta(I)Ljava/io/File;

    move-result-object p0

    const-string p1, "appsnapshots"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic rtg(Lcom/android/server/wm/ear/rtg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ear/rtg;->sis:Z

    return p1
.end method

.method static synthetic sis(Lcom/android/server/wm/ear/rtg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ear/rtg;->tsu:Z

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/wm/ear/rtg;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg;->you:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/ear/rtg;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg;->zta:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private wtn(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ear/rtg;->oif(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic you(Lcom/android/server/wm/ear/rtg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ear/rtg;->gck(I)V

    return-void
.end method

.method private ywr()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ear/rtg;->you:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg;->you:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ear/rtg$rtg;

    iget-object v1, p0, Lcom/android/server/wm/ear/rtg;->zta:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue is too deep! Purged item with package ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/ear/rtg$rtg;->tsu(Lcom/android/server/wm/ear/rtg$rtg;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/ear/rtg;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bvj(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/ear/rtg$sis;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ear/rtg$sis;-><init>(Lcom/android/server/wm/ear/rtg;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/ear/rtg;->gwm(Lcom/android/server/wm/ear/rtg$ssp;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ibl(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/ear/rtg$rtg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/ear/rtg$rtg;-><init>(Lcom/android/server/wm/ear/rtg;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/ear/rtg;->gwm(Lcom/android/server/wm/ear/rtg$ssp;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public igw(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/ear/rtg$you;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ear/rtg$you;-><init>(Lcom/android/server/wm/ear/rtg;I)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/ear/rtg;->gwm(Lcom/android/server/wm/ear/rtg$ssp;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method qbh(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/wm/ear/rtg;->oif(I)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method ugm(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/ear/rtg;->tsu:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg;->ssp:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

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

.method public vdb()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ear/rtg;->rtg:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ear/rtg;->rtg:Z

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg;->kth:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
