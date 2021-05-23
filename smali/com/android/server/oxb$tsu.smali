.class Lcom/android/server/oxb$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb;


# direct methods
.method constructor <init>(Lcom/android/server/oxb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic zta(Ljava/lang/String;Lcom/android/server/oxb$ywr;)V
    .locals 2

    iget-object v0, p2, Lcom/android/server/oxb$ywr;->zta:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/android/server/oxb$ywr;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/oxb$ywr;->sis:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",1,3"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTpd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpTpd"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    const-string p1, "/sys/module/tpd/parameters/tpd_id"

    invoke-static {p0, p1, p2}, Lcom/android/server/oxb;->oif(Lcom/android/server/oxb;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {v0}, Lcom/android/server/oxb;->igw(Lcom/android/server/oxb;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/oxb;->wtn(Lcom/android/server/oxb;Z)Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {v1}, Lcom/android/server/oxb;->gck(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {v2}, Lcom/android/server/oxb;->gck(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {v1}, Lcom/android/server/oxb;->dma(Lcom/android/server/oxb;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OpTpd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResumeRestrictionRunnable on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {v1}, Lcom/android/server/oxb;->qbh(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {v2}, Lcom/android/server/oxb;->qbh(Lcom/android/server/oxb;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/server/tsu;

    invoke-direct {v3, p0, v0}, Lcom/android/server/tsu;-><init>(Lcom/android/server/oxb$tsu;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResumeRestrictionRunnable failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpTpd"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic you(Ljava/lang/String;Lcom/android/server/oxb$ywr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oxb$tsu;->zta(Ljava/lang/String;Lcom/android/server/oxb$ywr;)V

    return-void
.end method
