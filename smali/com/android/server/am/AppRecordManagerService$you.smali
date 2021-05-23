.class Lcom/android/server/am/AppRecordManagerService$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$you;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/AppRecordManagerService$you;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p1}, Lcom/android/server/am/AppRecordManagerService;->access$300(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService$you;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p2}, Lcom/android/server/am/AppRecordManagerService;->access$300(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService$you;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/bio;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/bio;->veq(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$you;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0}, Lcom/android/server/am/AppRecordManagerService;->access$300(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
