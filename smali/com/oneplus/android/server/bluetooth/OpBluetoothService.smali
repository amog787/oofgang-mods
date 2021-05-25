.class public Lcom/oneplus/android/server/bluetooth/OpBluetoothService;
.super Lcom/oneplus/android/bluetooth/IOpBluetooth$Stub;
.source ""


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/android/bluetooth/IOpBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "OpBluetoothService"


# instance fields
.field private mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPhoneCallState:Ljava/lang/String;

.field private final opBluetoothActionReceiver:Landroid/content/BroadcastReceiver;

.field private sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

.field private sBluetoothStackEvent:Lcom/oneplus/android/server/bluetooth/cno;

.field private sMonitorA2dp:Lcom/oneplus/android/server/bluetooth/you;

.field private sMonitorDeviceState:Lcom/oneplus/android/server/bluetooth/sis;

.field private sMonitorHfp:Lcom/oneplus/android/server/bluetooth/tsu;

.field private sMonitorIotDevice:Lcom/oneplus/android/server/bluetooth/rtg;

.field private sMonitorOnOff:Lcom/oneplus/android/server/bluetooth/ssp;

.field private sRecorder:Lcom/oneplus/android/server/bluetooth/kth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/bluetooth/IOpBluetooth$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mPhoneCallState:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService$you;-><init>(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->opBluetoothActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/kth;

    invoke-direct {v0}, Lcom/oneplus/android/server/bluetooth/kth;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sRecorder:Lcom/oneplus/android/server/bluetooth/kth;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/zta;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/ssp;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorOnOff:Lcom/oneplus/android/server/bluetooth/ssp;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/you;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorA2dp:Lcom/oneplus/android/server/bluetooth/you;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorHfp:Lcom/oneplus/android/server/bluetooth/tsu;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mPhoneCallState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mPhoneCallState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/kth;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sRecorder:Lcom/oneplus/android/server/bluetooth/kth;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mEnabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/cno;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothStackEvent:Lcom/oneplus/android/server/bluetooth/cno;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->shortAddr(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/sis;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorDeviceState:Lcom/oneplus/android/server/bluetooth/sis;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Lcom/oneplus/android/server/bluetooth/rtg;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorIotDevice:Lcom/oneplus/android/server/bluetooth/rtg;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$902(Lcom/oneplus/android/server/bluetooth/OpBluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method public static getDefault()Lcom/oneplus/android/bluetooth/IOpBluetooth;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/bluetooth/IOpBluetooth;

    return-object v0
.end method

.method private shortAddr(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "00:00:00"

    return-object p0
.end method

.method private updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v2, "nanme"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v2, "oui"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {v3, v0, v2, v1}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v2, "class"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "1f00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {v3, v0, v2, v1}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v2, "type"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v2, "uuid"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {v1, p1}, Lcom/oneplus/android/server/bluetooth/zta;->tsu(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {v3, v0, v2, v1}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bat"

    invoke-virtual {v1, v0, v3, v2}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p1

    const-string v1, "connect"

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    if-eqz p1, :cond_6

    const-string p1, "Connected"

    goto :goto_0

    :cond_6
    const-string p1, "Discnnected"

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    const-string v0, "OpBluetoothService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_1

    aget-object p1, p3, v0

    const-string p3, "harald"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string p1, "----------------------------------"

    const-string p3, "OnePlus Bluetooth State"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p3}, Lcom/oneplus/android/server/bluetooth/zta;->zta()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string p3, "Intent Recorder"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sRecorder:Lcom/oneplus/android/server/bluetooth/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/bluetooth/kth;->sis()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "No Information"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method localDeviceIsAvailable()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_address"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "22:22"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/android/server/bluetooth/zta;->you()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothStackEvent:Lcom/oneplus/android/server/bluetooth/cno;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/android/server/bluetooth/cno;->qbh()V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorDeviceState:Lcom/oneplus/android/server/bluetooth/sis;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/android/server/bluetooth/sis;->gck()V

    :cond_2
    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/android/bluetooth/IOpBluetooth$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_bluetooth_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public reportEnableInfo(ZILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sRecorder:Lcom/oneplus/android/server/bluetooth/kth;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oneplus/android/server/bluetooth/bio;->vdb(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorOnOff:Lcom/oneplus/android/server/bluetooth/ssp;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->localDeviceIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorOnOff:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/bluetooth/ssp;->kth(ZILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public systemReady()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.codeaurora.intent.bluetooth.action.REMOTE_ISSUE_OCCURRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->opBluetoothActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/ssp;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/android/server/bluetooth/ssp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorOnOff:Lcom/oneplus/android/server/bluetooth/ssp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sRecorder:Lcom/oneplus/android/server/bluetooth/kth;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/ssp;->wtn(Lcom/oneplus/android/server/bluetooth/kth;)V

    :cond_0
    new-instance v0, Lcom/oneplus/android/server/bluetooth/zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/bluetooth/zta;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/rtg;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/android/server/bluetooth/rtg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorIotDevice:Lcom/oneplus/android/server/bluetooth/rtg;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/sis;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/bluetooth/sis;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorDeviceState:Lcom/oneplus/android/server/bluetooth/sis;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/you;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/bluetooth/you;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorA2dp:Lcom/oneplus/android/server/bluetooth/you;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/tsu;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/bluetooth/tsu;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorHfp:Lcom/oneplus/android/server/bluetooth/tsu;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/cno;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothDevice:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/bluetooth/cno;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothStackEvent:Lcom/oneplus/android/server/bluetooth/cno;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sRecorder:Lcom/oneplus/android/server/bluetooth/kth;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/cno;->zgw(Lcom/oneplus/android/server/bluetooth/kth;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sMonitorDeviceState:Lcom/oneplus/android/server/bluetooth/sis;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->sBluetoothStackEvent:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/bluetooth/cno;->vdb(Lcom/oneplus/android/server/bluetooth/sis;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
