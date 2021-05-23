.class Lcom/android/server/lqr/you$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lqr/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/lqr/you;


# direct methods
.method constructor <init>(Lcom/android/server/lqr/you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {v0}, Lcom/android/server/lqr/you;->zta(Lcom/android/server/lqr/you;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp-reduce check inTemp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {v2}, Lcom/android/server/lqr/you;->ywr(Lcom/android/server/lqr/you;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inWireless="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {v2}, Lcom/android/server/lqr/you;->zgw(Lcom/android/server/lqr/you;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {v1}, Lcom/android/server/lqr/you;->ywr(Lcom/android/server/lqr/you;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    iget-object p0, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    const-string v2, "special_batterytemp"

    invoke-static {p0, v2}, Lcom/android/server/lqr/you;->ire(Lcom/android/server/lqr/you;Ljava/lang/String;)Lcom/android/server/lqr/zta;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/lqr/you;->hmo(Lcom/android/server/lqr/you;Lcom/android/server/lqr/zta;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {v1}, Lcom/android/server/lqr/you;->zgw(Lcom/android/server/lqr/you;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    iget-object p0, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {p0}, Lcom/android/server/lqr/you;->sis(Lcom/android/server/lqr/you;)Z

    move-result p0

    invoke-static {v1, p0}, Lcom/android/server/lqr/you;->rtg(Lcom/android/server/lqr/you;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {v1}, Lcom/android/server/lqr/you;->ssp(Lcom/android/server/lqr/you;)V

    iget-object p0, p0, Lcom/android/server/lqr/you$you;->zta:Lcom/android/server/lqr/you;

    invoke-static {p0}, Lcom/android/server/lqr/you;->ear(Lcom/android/server/lqr/you;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
