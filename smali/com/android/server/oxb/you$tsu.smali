.class Lcom/android/server/oxb/you$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb/you;


# direct methods
.method constructor <init>(Lcom/android/server/oxb/you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v0}, Lcom/android/server/oxb/you;->zta(Lcom/android/server/oxb/you;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/oxb/you;->cno(Lcom/android/server/oxb/you;Lcom/android/server/oxb/zta;)Lcom/android/server/oxb/zta$zta;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParamLocked is null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/oxb/you;->k(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->kth(Lcom/android/server/oxb/you;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->bio(Lcom/android/server/oxb/you;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v3}, Lcom/android/server/oxb/you;->igw(Lcom/android/server/oxb/you;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v4}, Lcom/android/server/oxb/you;->ywr(Lcom/android/server/oxb/you;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->wtn(Lcom/android/server/oxb/you;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v3}, Lcom/android/server/oxb/you;->gck(Lcom/android/server/oxb/you;)F

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v4}, Lcom/android/server/oxb/you;->zgw(Lcom/android/server/oxb/you;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->dma(Lcom/android/server/oxb/you;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v3}, Lcom/android/server/oxb/you;->qbh(Lcom/android/server/oxb/you;)F

    move-result v3

    :cond_3
    :goto_0
    move v8, v2

    move v9, v3

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    iget-object v3, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v3}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/oxb/you;->oif(Lcom/android/server/oxb/you;Lcom/android/server/oxb/zta;)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oxb/zta;->you()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->kth(Lcom/android/server/oxb/you;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/oxb/zta$zta;->zta()D

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->bvj(Lcom/android/server/oxb/you;)F

    move-result v6

    move-object v1, v2

    move-wide v2, v3

    move v4, v9

    move v5, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/IOpBacklightController;->animateScreenBrightness(DFFF)V

    iget-object v1, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->ibl(Lcom/android/server/oxb/you;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object v2

    invoke-virtual {v2, v7, v10}, Lcom/android/server/oxb/zta;->bio(ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->oxb(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/you$kth;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->obl(Lcom/android/server/oxb/you;)Ljava/lang/Runnable;

    move-result-object p0

    int-to-long v3, v1

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oxb/zta;->you()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->kth(Lcom/android/server/oxb/you;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/oxb/zta$zta;->rtg()D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v5}, Lcom/android/server/oxb/you;->bvj(Lcom/android/server/oxb/you;)F

    move-result v7

    move v5, v9

    move v6, v8

    invoke-interface/range {v2 .. v7}, Lcom/android/server/display/IOpBacklightController;->animateScreenBrightness(DFFF)V

    iget-object v2, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->ibl(Lcom/android/server/oxb/you;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v3}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v10}, Lcom/android/server/oxb/zta;->bio(ZI)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->oxb(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/you$kth;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->obl(Lcom/android/server/oxb/you;)Ljava/lang/Runnable;

    move-result-object p0

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/oxb/zta$zta;->rtg()D

    move-result-wide v1

    const-wide v3, 0x3fefff2e48e8a71eL    # 0.9999

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    const-string v1, "ERROR, DO EXTRA RESUME!"

    invoke-static {v1}, Lcom/android/server/oxb/you;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->kth(Lcom/android/server/oxb/you;)Lcom/android/server/display/IOpBacklightController;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object p0, p0, Lcom/android/server/oxb/you$tsu;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->bvj(Lcom/android/server/oxb/you;)F

    move-result v6

    move v4, v9

    move v5, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/IOpBacklightController;->animateScreenBrightness(DFFF)V

    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
