.class Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cjf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cno(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Z

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Z)Z

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bio()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oldBtA2dpOn: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/ mBtA2dpOn: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cno(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OemSceneGameModePanel"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cno(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zta(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth$zta;

    invoke-direct {p2, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth$zta;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
