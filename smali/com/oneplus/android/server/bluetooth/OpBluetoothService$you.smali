.class Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/OpBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "OpBluetoothService"

    if-eqz v2, :cond_0

    const-string v2, "System Shutdown"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/android/server/bluetooth/zta;->you()V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v2, "System Boot Completed"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$100(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/ssp;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$100(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/ssp;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/oneplus/android/server/bluetooth/ssp;->bio(Z)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xc

    const/high16 v5, -0x80000000

    const/16 v6, 0xa

    const-string v7, " -> "

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v9, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service State "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    if-eq v2, v3, :cond_2

    invoke-static {v1, v8}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$302(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Z)Z

    goto :goto_0

    :cond_2
    invoke-static {v1, v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$302(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Z)Z

    :goto_0
    if-ne v2, v3, :cond_3

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$400(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/cno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/android/server/bluetooth/cno;->ywr()V

    goto :goto_1

    :cond_3
    if-ne v2, v6, :cond_4

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$400(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/cno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/android/server/bluetooth/cno;->qbh()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v9, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    if-eqz v2, :cond_7

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_6

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Connection "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    const-string v1, "Discovery Started"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    const-string v1, "Discovery Finished"

    goto :goto_3

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0xb

    if-eqz v2, :cond_f

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v9, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v1, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v1, v10, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v10, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v10}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_a

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v12, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " Bond "

    goto :goto_4

    :cond_a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bond "

    :goto_4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->tsu(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/oneplus/android/server/bluetooth/bio;->tsu(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    if-eqz v2, :cond_c

    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v7}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$600(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/sis;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v7}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$600(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/sis;

    move-result-object v7

    invoke-virtual {v7, v2, v9, v1}, Lcom/oneplus/android/server/bluetooth/sis;->sis(Landroid/bluetooth/BluetoothDevice;II)V

    if-ne v6, v9, :cond_b

    if-ne v5, v1, :cond_b

    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-virtual {v7}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->localDeviceIsAvailable()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->obl(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v7}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v11, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Bond failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v7}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$600(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/sis;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/oneplus/android/server/bluetooth/sis;->rtg(Landroid/bluetooth/BluetoothDevice;)V

    :cond_b
    if-ne v3, v9, :cond_c

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-virtual {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->localDeviceIsAvailable()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->obl(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$600(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/sis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/android/server/bluetooth/sis;->ssp(Landroid/bluetooth/BluetoothDevice;)V

    :cond_c
    if-ne v9, v6, :cond_e

    if-ne v1, v5, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v3

    const-string v5, "bond_fail_cnt"

    invoke-virtual {v3, v1, v5}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, " Bond Fail, cnt: "

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v3

    const-string v7, "1"

    invoke-virtual {v3, v1, v5, v7}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v5, v4}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v10, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, " reason: "

    if-eqz v2, :cond_10

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Pairing request variant: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->bvj(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->oif(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pairing request variant: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->bvj(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->oif(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v10, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_12

    if-eqz v1, :cond_12

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Pairing cancel - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_12
    return-void

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v10, "org.codeaurora.intent.bluetooth.action.REMOTE_ISSUE_OCCURRED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    const-string v3, "android.bluetooth.qti.extra.EXTRA_BQR"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothQualityReport;

    if-eqz v2, :cond_14

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Issue Occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport;->getQualityReportIdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-virtual {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->localDeviceIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v1

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/android/server/bluetooth/rtg;->ugm(Lcom/oneplus/android/server/bluetooth/kth;)V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/bluetooth/rtg;->ibl(Landroid/bluetooth/BluetoothQualityReport;)V

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v2, "android.bluetooth.qti.extra.ERROR_TYPE"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v2, "android.bluetooth.qti.extra.ERROR_CODE"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v2, "android.bluetooth.qti.extra.ERROR_EVENT_MASK"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v2, "android.bluetooth.qti.extra.EXTRA_LMP_VERSION"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v2, "android.bluetooth.qti.extra.EXTRA_LMP_SUBVER"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v2, "android.bluetooth.qti.extra.EXTRA_MANUFACTURER"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.bluetooth.qti.extra.EXTRA_POWER_LEVEL"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "android.bluetooth.qti.extra.EXTRA_LINK_QUALITY"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "android.bluetooth.qti.extra.EXTRA_GLITCH_COUNT"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v10, :cond_16

    iget-object v6, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v6}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v8, v10}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Remote Issue Occurred"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v6

    if-eqz v6, :cond_15

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_15
    const-string v6, "UNKNOW"

    :goto_7
    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v7}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") OUI("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")Class("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") Type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/oneplus/android/server/bluetooth/bio;->igw(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") Error Code("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/oneplus/android/server/bluetooth/bio;->bio(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") Event Mask(0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") LMP Version("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lcom/oneplus/android/server/bluetooth/bio;->cno(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") LMP SubVer(0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") Manufacturer ID(0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") Power Level("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Power RSSI("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Link Quality("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Glitch Count("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-virtual {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->localDeviceIsAvailable()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v10}, Lcom/oneplus/android/server/bluetooth/bio;->obl(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v2

    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v7}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/oneplus/android/server/bluetooth/rtg;->ugm(Lcom/oneplus/android/server/bluetooth/kth;)V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v9

    move-object/from16 v18, v6

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v1

    invoke-virtual/range {v9 .. v22}, Lcom/oneplus/android/server/bluetooth/rtg;->gwm(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IIIIIILjava/lang/String;IIII)V

    :cond_16
    :goto_8
    return-void

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v10, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, -0x1

    if-eqz v2, :cond_19

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    const-string v4, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_18

    if-eqz v3, :cond_18

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Found SDP Record "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->zgw(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Status "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_18
    return-void

    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v11, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    if-eqz v2, :cond_1b

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1a

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Access Request "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->dma(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Package "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Class "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_1a
    return-void

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v2, :cond_1c

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Access Replay "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->dma(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Result "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/bio;->ywr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Always Allowed "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_1c
    return-void

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_1e

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Access Cancel "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->dma(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_1e
    return-void

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v11, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const-string v12, "android.bluetooth.profile.extra.STATE"

    if-eqz v2, :cond_22

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_20

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v6, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " A2DP Connection "

    goto :goto_9

    :cond_20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP Connection "

    :goto_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    if-eqz v2, :cond_21

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$800(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_21
    return-void

    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v13, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "false"

    const-string v14, "true"

    if-eqz v2, :cond_26

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "a2dp_act"

    if-eqz v1, :cond_23

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5, v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " A2DP Active Changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v14}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$900(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_24

    if-eqz v1, :cond_24

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$900(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$900(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v13}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_24
    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$902(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    :cond_25
    :goto_a
    return-void

    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v15, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v4

    if-eqz v4, :cond_27

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oneplus/android/server/bluetooth/rtg;->vdb(I)V

    :cond_27
    if-eqz v2, :cond_29

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v9, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Playing State "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->kth(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->kth(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    if-ne v6, v3, :cond_28

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/you;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/bluetooth/you;->zta(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_b

    :cond_28
    if-ne v5, v3, :cond_2a

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/you;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/bluetooth/you;->you(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_b

    :cond_29
    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing State "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->kth(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->kth(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_2a
    :goto_b
    return-void

    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.extra.CODEC_STATUS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothCodecStatus;

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_2d

    array-length v6, v1

    if-lez v6, :cond_2d

    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v6

    :goto_c
    array-length v7, v1

    if-ge v4, v7, :cond_2c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_2c
    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v7, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Remote Codec: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    const-string v4, "remote codec"

    invoke-virtual {v1, v5, v4, v6}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz v3, :cond_2e

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v6, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Codec: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SampleRate: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->gwm(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", BitsPerSample: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->ibl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ChannelMode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->gck(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "codec"

    invoke-virtual {v1, v5, v4, v2}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->gwm(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sample_rate"

    invoke-virtual {v1, v5, v4, v2}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->ibl(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "bits_per_sample"

    invoke-virtual {v1, v5, v4, v2}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v1

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->gck(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel_mode"

    invoke-virtual {v0, v5, v2, v1}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-void

    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_30

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v6, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " HFP  Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HFP  Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ->  "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->rtg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    if-eqz v2, :cond_31

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$800(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_31
    return-void

    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "hfp_act"

    if-eqz v1, :cond_33

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5, v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HFP  Active Changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v14}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1100(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_34

    if-eqz v1, :cond_34

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1100(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1100(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v13}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_34
    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0, v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1102(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    :cond_35
    :goto_e
    return-void

    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v5

    if-eqz v5, :cond_37

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/android/server/bluetooth/rtg;->zgw(I)V

    :cond_37
    if-eqz v2, :cond_3a

    iget-object v5, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v9, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " HFP Audio State "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->ssp(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/bio;->ssp(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    if-ne v3, v4, :cond_39

    const-string v1, "bt_wbs"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hfp_codec"

    if-eqz v1, :cond_38

    const-string v4, "on"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/tsu;

    move-result-object v1

    const-string v4, "CVSD"

    invoke-virtual {v1, v4}, Lcom/oneplus/android/server/bluetooth/tsu;->tsu(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CVSD"

    invoke-virtual {v1, v4, v3, v5}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_38
    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/tsu;

    move-result-object v1

    const-string v4, "mSBC"

    invoke-virtual {v1, v4}, Lcom/oneplus/android/server/bluetooth/tsu;->tsu(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v4}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/tsu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/bluetooth/tsu;->zta(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_10

    :cond_39
    if-ne v6, v4, :cond_3b

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/tsu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/bluetooth/tsu;->you(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_10

    :cond_3a
    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HFP Audio State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->ssp(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/bio;->ssp(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_3b
    :goto_10
    return-void

    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.headset.extra.HF_INDICATORS_IND_ID"

    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.headset.extra.HF_INDICATORS_IND_VALUE"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    if-eq v1, v10, :cond_3d

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v6, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Battery "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bat"

    invoke-virtual {v0, v3, v2, v1}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-void

    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$300(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Z

    move-result v2

    if-ne v2, v4, :cond_3f

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1300(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v2, v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1302(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/tsu;

    move-result-object v1

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$1300(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/bluetooth/tsu;->sis(Ljava/lang/String;)V

    :cond_3f
    return-void

    :cond_40
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;->zta:Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio SCO State "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/bio;->ugm(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->ugm(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_41
    return-void
.end method
