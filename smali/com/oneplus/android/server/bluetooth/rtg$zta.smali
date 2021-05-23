.class Lcom/oneplus/android/server/bluetooth/rtg$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/bluetooth/rtg;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/rtg;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "OpBluetoothMonitorIotDevice"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknow msg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/android/server/bluetooth/rtg;->you(Lcom/oneplus/android/server/bluetooth/rtg;Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/rtg;->zta(Lcom/oneplus/android/server/bluetooth/rtg;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "version"

    const-string v2, "2"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->sis(Lcom/oneplus/android/server/bluetooth/rtg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/bio;->wtn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/rtg;->bio(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "class"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->igw(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error_type"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->wtn(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error_code"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->gck(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "event_mask"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->dma(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lmp_ver"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->ywr(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lmp_sub_ver"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->qbh(Lcom/oneplus/android/server/bluetooth/rtg;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "manufacturer"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->oif(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "power_level"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->tsu(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rssi"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->rtg(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "link_quality"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->ssp(Lcom/oneplus/android/server/bluetooth/rtg;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "glitch_count"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/rtg;->cno(Lcom/oneplus/android/server/bluetooth/rtg;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/rtg;->cno(Lcom/oneplus/android/server/bluetooth/rtg;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const-string v2, "model"

    if-eqz v0, :cond_1

    const-string v0, "CAR"

    goto :goto_0

    :cond_1
    const-string v0, "NONE"

    :goto_0
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->cno(Lcom/oneplus/android/server/bluetooth/rtg;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/rtg;->cno(Lcom/oneplus/android/server/bluetooth/rtg;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/bio;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    const-string v3, "F6X2WLDK2K"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/rtg;->zta(Lcom/oneplus/android/server/bluetooth/rtg;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg$zta;->zta:Lcom/oneplus/android/server/bluetooth/rtg;

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/rtg;->kth(Lcom/oneplus/android/server/bluetooth/rtg;)Landroid/content/Context;

    move-result-object p0

    const-string v3, "bt_iot_device_broadcast"

    invoke-virtual {v2, p0, v3, p1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Device IOT Broadcast Fail"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
