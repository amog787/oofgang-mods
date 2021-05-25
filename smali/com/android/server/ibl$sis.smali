.class Lcom/android/server/ibl$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/ibl;


# direct methods
.method constructor <init>(Lcom/android/server/ibl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {p1}, Lcom/android/server/ibl;->bio(Lcom/android/server/ibl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {v0}, Lcom/android/server/ibl;->igw(Lcom/android/server/ibl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {v0}, Lcom/android/server/ibl;->wtn(Lcom/android/server/ibl;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    iget-object p0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {p0}, Lcom/android/server/ibl;->gck(Lcom/android/server/ibl;)I

    move-result p0

    if-lt p2, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/ibl;->ywr(Lcom/android/server/ibl;Z)V

    monitor-exit p1

    return-void

    :cond_3
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
