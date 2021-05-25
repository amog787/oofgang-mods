.class Lcom/android/server/am/OnePlusBackgroundFrozen$gck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "gck"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

.field you:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zta:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->zta:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->you:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->zta:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private you(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->you:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->you:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->you:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->you:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->B(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->zta:I

    const-string v3, "systemUid notifyStateChange NOTIFY_ALL"

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->C(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->q(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->B(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->zta:I

    const-string v1, "systemUid notifyStateChange"

    invoke-static {v0, p1, v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->C(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->q(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusBackgroundFrozen$gck;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->you(Ljava/lang/String;I)V

    return-void
.end method
