.class Lcom/android/server/oxb/you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/OpWindowManagerService$zta;


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

    iput-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {v0}, Lcom/android/server/oxb/you;->zta(Lcom/android/server/oxb/you;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->you(Lcom/android/server/oxb/you;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1, p1}, Lcom/android/server/oxb/you;->tsu(Lcom/android/server/oxb/you;Z)Z

    iget-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->ywr(Lcom/android/server/oxb/you;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->zgw(Lcom/android/server/oxb/you;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->you(Lcom/android/server/oxb/you;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->oxb(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/you$kth;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->obl(Lcom/android/server/oxb/you;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->oxb(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/you$kth;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->obl(Lcom/android/server/oxb/you;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->cjf(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/oxb/zta;->you()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->oxb(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/you$kth;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->obl(Lcom/android/server/oxb/you;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/oxb/you$zta;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->ear(Lcom/android/server/oxb/you;)V

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :cond_5
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