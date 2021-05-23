.class Lcom/android/server/oxb$rtg;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/oxb;


# direct methods
.method constructor <init>(Lcom/android/server/oxb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb$rtg;->you:Lcom/android/server/oxb;

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    return-void
.end method


# virtual methods
.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    if-eqz p5, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/oxb$rtg;->you:Lcom/android/server/oxb;

    invoke-static {p1}, Lcom/android/server/oxb;->gck(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p4, p0, Lcom/android/server/oxb$rtg;->you:Lcom/android/server/oxb;

    invoke-static {p4}, Lcom/android/server/oxb;->gck(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/android/server/oxb$rtg;->you:Lcom/android/server/oxb;

    invoke-static {p1}, Lcom/android/server/oxb;->qbh(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object p3

    monitor-enter p3

    :try_start_1
    iget-object p0, p0, Lcom/android/server/oxb$rtg;->you:Lcom/android/server/oxb;

    invoke-static {p0}, Lcom/android/server/oxb;->qbh(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/oxb$ywr;

    iget p4, p1, Lcom/android/server/oxb$ywr;->you:I

    if-ne p4, p2, :cond_2

    const-string p4, "OpTpd"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "remove record "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p1, Lcom/android/server/oxb$ywr;->zta:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ", pid:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p1, Lcom/android/server/oxb$ywr;->you:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", tid:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/oxb$ywr;->sis:I

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
