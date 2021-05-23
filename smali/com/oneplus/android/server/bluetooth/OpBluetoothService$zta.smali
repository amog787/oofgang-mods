.class Lcom/oneplus/android/server/bluetooth/OpBluetoothService$zta;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/OpBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/android/bluetooth/IOpBluetooth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$zta;->zta()Lcom/oneplus/android/bluetooth/IOpBluetooth;

    move-result-object p0

    return-object p0
.end method

.method protected zta()Lcom/oneplus/android/bluetooth/IOpBluetooth;
    .locals 2

    const-string p0, "oneplus_bluetooth_service"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "OpBluetoothService"

    if-nez p0, :cond_0

    const-string p0, "can\'t get service binder: oneplus_bluetooth_service"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/android/bluetooth/IOpBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/bluetooth/IOpBluetooth;

    move-result-object p0

    if-nez p0, :cond_1

    const-string v1, "can\'t get service interface: IOpBluetooth"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method
