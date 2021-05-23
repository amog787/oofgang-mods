.class Lcom/oneplus/android/server/bluetooth/ssp$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/bluetooth/ssp;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$you;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknow msg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBluetoothMonitorServiceOnOff"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$you;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    const-wide/32 v2, 0x5265c00

    invoke-static {p1, v2, v3}, Lcom/oneplus/android/server/bluetooth/ssp;->rtg(Lcom/oneplus/android/server/bluetooth/ssp;J)V

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$you;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/ssp;->ssp(Lcom/oneplus/android/server/bluetooth/ssp;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
