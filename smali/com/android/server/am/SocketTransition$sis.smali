.class Lcom/android/server/am/SocketTransition$sis;
.super Lcom/android/server/am/gck;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SocketTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/SocketTransition;


# direct methods
.method private constructor <init>(Lcom/android/server/am/SocketTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-direct {p0}, Lcom/android/server/am/gck;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SocketTransition;Lcom/android/server/am/SocketTransition$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SocketTransition$sis;-><init>(Lcom/android/server/am/SocketTransition;)V

    return-void
.end method


# virtual methods
.method public cno(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteHighUsedAppChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isHighUsedApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/am/qbh;->kth:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->access$700(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gck(ILjava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteTrafficChanged + uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/qbh;->kth:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p2}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SocketTransition;->access$300(I)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/server/am/SocketTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteBluetoothConnectedChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isConnetcted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/qbh;->kth:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {v0, p1}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object v0, v0, Lcom/android/server/am/SocketTransition;->mBluetoothList:Ljava/util/Set;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object p2, p2, Lcom/android/server/am/SocketTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object p2, p2, Lcom/android/server/am/SocketTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->access$700(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p2, "com.bluetooth.resetAll"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 v1, 0x20000

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object p1, p1, Lcom/android/server/am/SocketTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/AppRecordManager;->sis(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/wtn;->u(I)V

    iget-object v2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {v2, p2}, Lcom/android/server/am/SocketTransition;->access$700(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->sis(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/server/am/wtn;->u(I)V

    iget-object p2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/SocketTransition;->access$700(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mBluetoothList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public noteFloatWindowChange(Ljava/lang/String;IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFloatWindowChange  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " hasFloatWid = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/qbh;->kth:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, p1}, Lcom/android/server/am/SocketTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public noteFreezeStateChange(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFreezeStateChange  uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isFreeze = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/am/qbh;->kth:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/SocketTransition;->access$800(Lcom/android/server/am/SocketTransition;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SocketTransition;->access$300(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->access$900(Lcom/android/server/am/SocketTransition;I)V

    :cond_0
    return-void
.end method

.method public noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteFrontPackageChanged  packageName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lpackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " luid = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " lpid = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p4, Lcom/android/server/am/qbh;->kth:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p4, p1}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-static {p2}, Lcom/android/server/am/SocketTransition;->access$300(I)I

    move-result p4

    invoke-static {p4, p3}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/wtn;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/android/server/am/wtn;->ssp(I)Lcom/android/server/am/h;

    move-result-object p6

    iget-object v0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object v0, v0, Lcom/android/server/am/SocketTransition;->mProcList:Ljava/util/Set;

    monitor-enter v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p6, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object v2, v2, Lcom/android/server/am/SocketTransition;->mProcList:Ljava/util/Set;

    iget-object v3, p6, Lcom/android/server/am/h;->sis:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    iget-object v2, v2, Lcom/android/server/am/SocketTransition;->mProcList:Ljava/util/Set;

    iget-object p6, p6, Lcom/android/server/am/h;->sis:Ljava/lang/String;

    invoke-interface {v2, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5, v1}, Lcom/android/server/am/wtn;->zta(I)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p6, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p6, p4, p3, p1}, Lcom/android/server/am/SocketTransition;->access$1100(Lcom/android/server/am/SocketTransition;IILjava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/server/am/wtn;->tsu()I

    move-result p3

    and-int/2addr p3, v1

    if-eqz p3, :cond_1

    invoke-virtual {p5, v1}, Lcom/android/server/am/wtn;->u(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p3}, Lcom/android/server/am/SocketTransition;->access$1200(Lcom/android/server/am/SocketTransition;)Ljava/lang/String;

    move-result-object p3

    if-ne p3, p1, :cond_2

    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p3}, Lcom/android/server/am/SocketTransition;->access$1300(Lcom/android/server/am/SocketTransition;)I

    move-result p3

    if-eq p3, p2, :cond_3

    :cond_2
    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p3}, Lcom/android/server/am/SocketTransition;->access$1200(Lcom/android/server/am/SocketTransition;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/server/am/SocketTransition;->access$1402(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Ljava/lang/String;

    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p3}, Lcom/android/server/am/SocketTransition;->access$1300(Lcom/android/server/am/SocketTransition;)I

    move-result p4

    invoke-static {p3, p4}, Lcom/android/server/am/SocketTransition;->access$1502(Lcom/android/server/am/SocketTransition;I)I

    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p3, p1}, Lcom/android/server/am/SocketTransition;->access$1202(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p2}, Lcom/android/server/am/SocketTransition;->access$1302(Lcom/android/server/am/SocketTransition;I)I

    :cond_3
    return-void
.end method

.method public noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteNotificationChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " hasNoClear = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/qbh;->kth:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, p1}, Lcom/android/server/am/SocketTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notePSSChanged(IIJ)V
    .locals 7

    sget-boolean v0, Lcom/android/server/am/qbh;->kth:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/SocketTransition;->access$400(Lcom/android/server/am/SocketTransition;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/SocketTransition;->isPersistProcess(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/wtn;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/wtn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/wtn;->ssp(I)Lcom/android/server/am/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/server/am/SocketTransition;->access$300(I)I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/server/am/AppRecordManager;->kth(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/h;->sis:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v4, "com.tencent.mm:appbrand"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/server/am/h;->sis:Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/SocketTransition;->createPssUpdate(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notePSSChanged + uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "pss = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public notePredctionAppChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notePredctionAppChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isPredctionApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/am/qbh;->kth:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p2, p1}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->access$700(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 11

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noteProcessStateChanged  uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isProcessStart = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " diedAdj = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " killReason = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    const-string v7, "com.tencent.mm:appbrand"

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/server/am/qbh;->kth:Z

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {v5, p3}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/SocketTransition;->isPersistProcess(II)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/wtn;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, p2}, Lcom/android/server/am/wtn;->ssp(I)Lcom/android/server/am/h;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    if-eqz v5, :cond_3

    if-eqz v4, :cond_1

    invoke-virtual {p4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/server/am/h;->zta(I)V

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/am/h;->tsu()I

    move-result v5

    iget-object v0, v0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    move v2, p1

    move v3, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/SocketTransition;->createProcessStart(Ljava/lang/String;IILjava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_3
    move-object v0, v9

    goto :goto_4

    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/wtn;

    if-eqz v4, :cond_5

    invoke-virtual {p4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v7, v4

    goto :goto_1

    :cond_5
    move-object v7, v1

    :goto_1
    invoke-static {p1, p2, v7}, Lcom/android/server/am/SocketTransition;->access$1000(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    :goto_2
    move v5, v1

    goto :goto_3

    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "@"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v6, :cond_7

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->isRemoveTsk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_3
    iget-object v0, v0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/SocketTransition;->createProcessRemove(Ljava/lang/String;IILjava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v7}, Lcom/android/server/am/qbh;->igw(Ljava/lang/String;)V

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_8
    return-void
.end method

.method public noteUserLockAppChanged(Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteUserLockAppChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isUserLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/qbh;->kth:Z

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, p1}, Lcom/android/server/am/SocketTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oif(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteVideoChanged + uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/qbh;->kth:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p3, p1, p2}, Lcom/android/server/am/SocketTransition;->access$400(Lcom/android/server/am/SocketTransition;II)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/SocketTransition;->isPersistProcess(II)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SocketTransition;->access$300(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/SocketTransition;->access$500(Lcom/android/server/am/SocketTransition;II)V

    :cond_0
    return-void
.end method

.method public tsu(IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteAudioChanged + uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/server/am/qbh;->kth:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p3, p1, p2}, Lcom/android/server/am/SocketTransition;->access$400(Lcom/android/server/am/SocketTransition;II)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/SocketTransition;->isPersistProcess(II)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SocketTransition;->access$300(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/SocketTransition$sis;->you:Lcom/android/server/am/SocketTransition;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/SocketTransition;->access$500(Lcom/android/server/am/SocketTransition;II)V

    :cond_0
    return-void
.end method

.method public ywr(ILjava/lang/String;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteGpsChanged + uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " using = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/am/qbh;->kth:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/SocketTransition;->access$300(I)I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/server/am/SocketTransition;->createAppStateBM(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
