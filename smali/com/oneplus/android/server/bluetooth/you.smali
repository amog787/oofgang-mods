.class Lcom/oneplus/android/server/bluetooth/you;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:Ljava/lang/String; = "RBS8PPYT2W"

.field static final cno:Z = false

.field private static final igw:Ljava/lang/String; = "bt_profile_use_time"

.field static final kth:Z = false

.field static final ssp:Ljava/lang/String; = "OpBluetoothMonitorA2dp"


# instance fields
.field private rtg:Lcom/oneplus/android/server/bluetooth/zta;

.field private sis:J

.field private tsu:Landroid/bluetooth/BluetoothDevice;

.field private you:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/android/server/bluetooth/you;->sis:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/you;->tsu:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/you;->rtg:Lcom/oneplus/android/server/bluetooth/zta;

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/you;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/bluetooth/you;->rtg:Lcom/oneplus/android/server/bluetooth/zta;

    return-void
.end method


# virtual methods
.method public you(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/you;->tsu:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_9

    iget-wide v1, p0, Lcom/oneplus/android/server/bluetooth/you;->sis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/oneplus/android/server/bluetooth/you;->sis:J

    sub-long/2addr v0, v5

    iput-wide v3, p0, Lcom/oneplus/android/server/bluetooth/you;->sis:J

    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/android/server/bluetooth/you;->you:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    const-string v5, "2"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "profile"

    const-string v5, "A2DP"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "%d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/bio;->wtn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    const-string v1, "c"

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "0x0"

    :goto_0
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "t"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/you;->rtg:Lcom/oneplus/android/server/bluetooth/zta;

    if-eqz v0, :cond_3

    const-string p1, "oui"

    invoke-virtual {v0, v3, p1}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "a"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/you;->tsu:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    const-string v0, "model"

    if-eqz p1, :cond_6

    const-string p1, "CAR"

    goto :goto_1

    :cond_6
    const-string p1, "NONE"

    :goto_1
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/you;->rtg:Lcom/oneplus/android/server/bluetooth/zta;

    if-eqz p1, :cond_8

    const-string v0, "codec"

    invoke-virtual {p1, v3, v0}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/you;->rtg:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v0, "remote codec"

    invoke-virtual {p1, v3, v0}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "remote_codec"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appid"

    const-string v1, "RBS8PPYT2W"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/you;->you:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/you;->zta:Landroid/content/Context;

    const-string v1, "bt_profile_use_time"

    invoke-virtual {v0, p0, v1, v2, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "OpBluetoothMonitorA2dp"

    const-string v0, "Check A2DP Usage Time Fail"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void
.end method

.method public zta(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/android/server/bluetooth/you;->sis:J

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/you;->tsu:Landroid/bluetooth/BluetoothDevice;

    :cond_0
    return-void
.end method
