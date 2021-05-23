.class Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ywr"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

.field you:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusBackgroundFrozen$cno;",
            ">;"
        }
    .end annotation
.end field

.field zta:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;ILcom/android/server/am/OnePlusBackgroundFrozen$zta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    return-void
.end method

.method private rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sis()Lcom/android/server/am/OnePlusBackgroundFrozen$cno;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)I

    move-result v3

    if-gez v3, :cond_0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ssp()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusBackgroundFrozen$cno;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tsu(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->sis()Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->ssp()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->tsu(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    return-void
.end method
