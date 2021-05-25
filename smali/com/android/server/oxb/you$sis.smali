.class Lcom/android/server/oxb/you$sis;
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

    iput-object p1, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    invoke-static {v0}, Lcom/android/server/oxb/you;->zta(Lcom/android/server/oxb/you;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wireless-reduce check => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    invoke-static {v2}, Lcom/android/server/oxb/you;->sis(Lcom/android/server/oxb/you;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/oxb/you;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->sis(Lcom/android/server/oxb/you;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    iget-object p0, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    const-string v2, "special_wireless"

    invoke-static {p0, v2}, Lcom/android/server/oxb/you;->ire(Lcom/android/server/oxb/you;Ljava/lang/String;)Lcom/android/server/oxb/zta;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/oxb/you;->hmo(Lcom/android/server/oxb/you;Lcom/android/server/oxb/zta;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    invoke-static {v1}, Lcom/android/server/oxb/you;->ssp(Lcom/android/server/oxb/you;)V

    iget-object p0, p0, Lcom/android/server/oxb/you$sis;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->ear(Lcom/android/server/oxb/you;)V

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
