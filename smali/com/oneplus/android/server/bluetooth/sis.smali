.class Lcom/oneplus/android/server/bluetooth/sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/bluetooth/sis$you;
    }
.end annotation


# static fields
.field static final bio:Z = false

.field private static final bvj:I = 0x3a98

.field private static final dma:Ljava/lang/String; = "bt_pair_fail"

.field private static final gck:Ljava/lang/String; = "bt_paired_success"

.field static final igw:Z = false

.field static final kth:Ljava/lang/String; = "OpBluetoothMonitorDeviceState"

.field private static final oif:I = 0xea60

.field private static final qbh:I = 0x2

.field private static final wtn:Ljava/lang/String; = "F6X2WLDK2K"

.field private static final ywr:I = 0x1


# instance fields
.field private final cno:Landroid/os/Handler;

.field private rtg:Z

.field private sis:Lcom/oneplus/android/server/bluetooth/zta;

.field private ssp:Z

.field private tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

.field private you:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->zta:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->you:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->rtg:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->ssp:Z

    new-instance v0, Lcom/oneplus/android/server/bluetooth/sis$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/bluetooth/sis$zta;-><init>(Lcom/oneplus/android/server/bluetooth/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->cno:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    new-instance p1, Lcom/oneplus/android/server/bluetooth/sis$you;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/bluetooth/sis$you;-><init>(Lcom/oneplus/android/server/bluetooth/sis;)V

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    return-void
.end method

.method private cno(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const-string v0, "UNKNOW"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v3, v3, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_d

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/android/server/bluetooth/sis;->you:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v2, :cond_e

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "version"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v3, v3, Lcom/oneplus/android/server/bluetooth/sis$you;->sis:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "n"

    const-string v5, ""

    if-nez v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v3, v3, Lcom/oneplus/android/server/bluetooth/sis$you;->sis:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v3, v3, Lcom/oneplus/android/server/bluetooth/sis$you;->sis:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->wtn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/bio;->wtn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "0"

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "0x"

    const-string v8, "c"

    if-nez v6, :cond_4

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget v6, v6, Lcom/oneplus/android/server/bluetooth/sis$you;->cno:I

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    :goto_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5, v3}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v3, "a"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "model"

    if-eqz p1, :cond_7

    :try_start_4
    const-string p1, "CAR"

    :goto_5
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    const-string p1, "NONE"

    goto :goto_5

    :goto_6
    const-string p1, "e"

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget v0, v0, Lcom/oneplus/android/server/bluetooth/sis$you;->you:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/sis$you;->tsu:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "lv"

    if-eqz p1, :cond_8

    :try_start_5
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/sis$you;->tsu:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v1, v1, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    const-string v3, "lmp_ver"

    invoke-virtual {p1, v1, v3}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/sis$you;->rtg:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "lsv"

    if-eqz p1, :cond_a

    :try_start_6
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/sis$you;->rtg:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_a
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v1, v1, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    const-string v3, "lmp_subver"

    invoke-virtual {p1, v1, v3}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/sis$you;->ssp:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v0, "m"

    if-eqz p1, :cond_c

    :try_start_7
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/sis$you;->ssp:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_c
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v1, v1, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    const-string v3, "manufacturer_id"

    invoke-virtual {p1, v1, v3}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object p1, p1, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/bio;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "s"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appid"

    const-string v1, "F6X2WLDK2K"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->you:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis;->zta:Landroid/content/Context;

    const-string v1, "bt_pair_fail"

    invoke-virtual {v0, p0, v1, v2, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_d

    :catch_0
    move-exception p0

    const-string p1, "OpBluetoothMonitorDeviceState"

    const-string v0, "Check remote device bonded fail fail"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_d
    return-void
.end method

.method private kth(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->you:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/sis;->tsu(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    const-string v3, "F6X2WLDK2K"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/sis;->you:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/sis;->zta:Landroid/content/Context;

    const-string v4, "bt_paired_success"

    invoke-virtual {v2, v3, v4, v0, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpBluetoothMonitorDeviceState"

    const-string v2, "Check remote device bonded success fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mdm_pair_completed"

    const-string v2, "1"

    invoke-virtual {v0, p1, v1, v2}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    const-string v0, "lmp_ver"

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private tsu(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    const-string v6, "version"

    const-string v8, "2"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/android/server/bluetooth/bio;->wtn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "n"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, "manufacturer_id"

    invoke-virtual {v6, v8, v9}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "m"

    const-string v9, "0"

    if-eqz v6, :cond_2

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v6, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v10, "lmp_ver"

    invoke-virtual {v6, v8, v10}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "lv"

    if-eqz v6, :cond_3

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v8, "lmp_subver"

    invoke-virtual {p0, v6, v8}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "lsv"

    if-eqz p0, :cond_4

    invoke-virtual {v0, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v6, "c"

    invoke-virtual {v0, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v6, "t"

    invoke-virtual {v0, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "a"

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    const-string v3, "model"

    if-eqz p0, :cond_6

    const-string p0, "CAR"

    goto :goto_4

    :cond_6
    const-string p0, "NONE"

    :goto_4
    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/bio;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "s"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_a

    array-length p0, v2

    move p1, v4

    move-object v1, v7

    :goto_5
    if-ge p1, p0, :cond_9

    aget-object v3, v2, p1

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "00000000"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    :goto_6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    const-string p0, "u"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_a
    return-object v1
.end method

.method static synthetic you(Lcom/oneplus/android/server/bluetooth/sis;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/sis;->cno(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/sis;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/sis;->kth(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bio(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    iget v0, v0, Lcom/oneplus/android/server/bluetooth/sis$you;->you:I

    if-eq v0, p3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis;->tsu:Lcom/oneplus/android/server/bluetooth/sis$you;

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->zta:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->you:I

    iput-object p2, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->sis:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->tsu:I

    iput p5, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->rtg:I

    iput p6, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->ssp:I

    iput p7, p0, Lcom/oneplus/android/server/bluetooth/sis$you;->cno:I

    return-void
.end method

.method public gck()V
    .locals 0

    return-void
.end method

.method public igw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->ssp:Z

    return-void
.end method

.method public rtg(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->cno:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->cno:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->rtg:Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->ssp:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->cno:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->rtg:Z

    iput-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->ssp:Z

    return-void
.end method

.method public sis(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8

    const/16 p1, 0xb

    if-ne p2, p1, :cond_0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v1, "00:00:00:00:00:00"

    const-string v2, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/android/server/bluetooth/sis;->bio(Ljava/lang/String;Ljava/lang/String;IIIII)V

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput-boolean v1, p0, Lcom/oneplus/android/server/bluetooth/sis;->rtg:Z

    :cond_1
    if-ne p2, p1, :cond_2

    const/16 p1, 0xa

    if-ne p3, p1, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/android/server/bluetooth/sis;->ssp:Z

    :cond_2
    return-void
.end method

.method public ssp(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->sis:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mdm_pair_completed"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/android/server/bluetooth/zta;->sis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/sis;->cno:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/sis;->cno:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public wtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/sis;->rtg:Z

    return-void
.end method
