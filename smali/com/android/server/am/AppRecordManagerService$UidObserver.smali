.class final Lcom/android/server/am/AppRecordManagerService$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidActive: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/bio;

    invoke-virtual {p1}, Lcom/android/server/am/bio;->p()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidGone: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/bio;

    invoke-virtual {p1}, Lcom/android/server/am/bio;->q()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUidIdle: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/bio;

    invoke-virtual {p1}, Lcom/android/server/am/bio;->r()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUidStateChanged: uid="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procStateSeq="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    invoke-static {v0, p5}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p5, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p5, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result p5

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/bio;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/bio;->C(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method
