.class Lcom/oneplus/android/server/bluetooth/sis$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/bluetooth/sis;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis$zta;->zta:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknow msg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBluetoothMonitorDeviceState"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis$zta;->zta:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/bluetooth/sis;->you(Lcom/oneplus/android/server/bluetooth/sis;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis$zta;->zta:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/bluetooth/sis;->zta(Lcom/oneplus/android/server/bluetooth/sis;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
