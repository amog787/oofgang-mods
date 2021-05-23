.class public Lcom/android/server/am/OnePlusBGController$ibl;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ibl"
.end annotation


# static fields
.field public static final bio:I = 0x101d7

.field public static final bvj:I = 0x101df

.field public static final cno:I = 0x101d5

.field public static final dma:I = 0x101db

.field public static final gck:I = 0x101da

.field public static final igw:I = 0x101d8

.field public static final kth:I = 0x101d6

.field public static final oif:I = 0x101de

.field public static final qbh:I = 0x101dd

.field public static final rtg:I = 0x101d3

.field public static final sis:I = 0x101d1

.field public static final ssp:I = 0x101d4

.field public static final tsu:I = 0x101d2

.field public static final wtn:I = 0x101d9

.field public static final you:I = 0x101d0

.field public static final ywr:I = 0x101dc


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->E:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_CHARGE_CHANGE== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->v()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "due to plugged, need to schedule one more refreshing"

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/OnePlusBGController$gwm;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SnapshotType;->you:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController$gwm;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SnapshotType;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_NODE_QUERY== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->n0(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->tsu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->n0(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMD] full: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remaining: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;

    move-result-object p1

    const v0, 0x101de

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;

    move-result-object p0

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_UID_UPGRADE== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBGController;->you(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->O(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->O(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->O(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/am/OnePlusBGController$zgw;->zta:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/server/am/OnePlusBGController$zgw;->ugm(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v1

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_UID_UNINSTALL== uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->dma(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$obl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->dma(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->O(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->O(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_DAILY_REPORTING== forQuickDebug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/OnePlusBGController$gwm;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->tsu:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/am/OnePlusBGController$gwm;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SnapshotType;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_NETWORK_REACHABILITY_CHANGE== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->dma(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->N()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/OnePlusBGController$obl;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->N()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBGController;->hmo(Lcom/android/server/am/OnePlusBGController;I)Lcom/android/server/am/OnePlusBGController$oif;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMS uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->N()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " simulates uid-changing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->N()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    iget p1, p1, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    invoke-static {p0, v1, v2, p1, v0}, Lcom/android/server/am/OnePlusBGController;->d(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    goto/16 :goto_5

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "myBs == null, uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->N()I

    move-result p1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    const-string p0, "GMS\'s ustats is still null, skip this round"

    goto :goto_4

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/OnePlusBGController;->s0(II)V

    goto/16 :goto_5

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_RESET_KILLED_BUDGET== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBGController;->M(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_FGBG_CHANGE== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController$ProcType;->zta(I)Lcom/android/server/am/OnePlusBGController$ProcType;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/OnePlusBGController$obl;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$obl;->ssp()I

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->dma(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$obl;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBGController;->hmo(Lcom/android/server/am/OnePlusBGController;I)Lcom/android/server/am/OnePlusBGController$oif;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    invoke-static {v4, v5}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/am/OnePlusBGController;->d(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "myBs == null, uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    const-string p0, "ProcType type == null"

    goto/16 :goto_4

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been un-installed, no handle MSG_FGBG_CHANGE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_a
    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController;->R0()V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController;->L0()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ibl;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController;->r0()V

    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101d0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
