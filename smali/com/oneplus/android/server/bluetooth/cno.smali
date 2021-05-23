.class Lcom/oneplus/android/server/bluetooth/cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/bluetooth/cno$you;
    }
.end annotation


# static fields
.field public static final bvj:I = 0xa0

.field public static final dma:I = 0x0

.field static final gck:Z = true

.field private static final gwm:Ljava/lang/String; = "#\\$%"

.field private static final ibl:Ljava/lang/String; = "%\\^&"

.field static final igw:Ljava/lang/String; = "OpBluetoothStackEvent"

.field private static final obl:Ljava/lang/String; = "host_bond_cancel"

.field public static final oif:I = 0x3

.field private static final oxb:Ljava/lang/String; = "op_bluetooth_server_socket"

.field public static final qbh:I = 0x2

.field private static final ugm:Ljava/lang/String; = "hci_error"

.field private static final vdb:Ljava/lang/String; = "update_version"

.field static final wtn:Z = false

.field public static final ywr:I = 0x1

.field private static final zgw:Ljava/lang/String; = "host_bond_create"


# instance fields
.field private final bio:Landroid/os/Handler;

.field private cno:Ljava/io/InputStream;

.field private kth:Lcom/oneplus/android/server/bluetooth/cno$you;

.field private rtg:Landroid/net/LocalServerSocket;

.field private sis:Lcom/oneplus/android/server/bluetooth/sis;

.field private ssp:Landroid/net/LocalSocket;

.field private tsu:Lcom/oneplus/android/server/bluetooth/zta;

.field private you:Lcom/oneplus/android/server/bluetooth/kth;

.field private zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->tsu:Lcom/oneplus/android/server/bluetooth/zta;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->rtg:Landroid/net/LocalServerSocket;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->ssp:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->cno:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->kth:Lcom/oneplus/android/server/bluetooth/cno$you;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/cno$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/bluetooth/cno$zta;-><init>(Lcom/oneplus/android/server/bluetooth/cno;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->bio:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/cno;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/bluetooth/cno;->tsu:Lcom/oneplus/android/server/bluetooth/zta;

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/bluetooth/cno;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/cno;->ibl(Ljava/lang/String;)V

    return-void
.end method

.method private bvj(Ljava/lang/String;)V
    .locals 14

    const-string v0, "#\\$%"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process_info, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpBluetoothStackEvent"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "%\\^&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :try_start_0
    array-length v3, v1

    if-lez v3, :cond_d

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_d

    aget-object v5, v4, v3

    const-string v7, "reason"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    array-length v5, v1

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x1

    aget-object v6, v4, v5

    const-string v7, "host_bond_create"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "HOST"

    const-string v8, "val"

    if-eqz v6, :cond_2

    :try_start_1
    aget-object v1, v1, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    if-eqz v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v0, v0, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    const-string v1, "Host create the bond process."

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-virtual {p0, v5}, Lcom/oneplus/android/server/bluetooth/sis;->wtn(Z)V

    goto/16 :goto_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/bluetooth/sis;->wtn(Z)V

    goto/16 :goto_2

    :cond_2
    aget-object v6, v4, v5

    const-string v9, "host_bond_cancel"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v1, v1, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    if-eqz v1, :cond_3

    aget-object v1, v0, v3

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object v0, v0, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    const-string v1, "Host cancel the bond process."

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-virtual {p0, v5}, Lcom/oneplus/android/server/bluetooth/sis;->igw(Z)V

    goto/16 :goto_2

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/bluetooth/sis;->igw(Z)V

    goto/16 :goto_2

    :cond_4
    aget-object v6, v4, v5

    const-string v7, "update_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_c

    const-string v4, ""

    move v8, v3

    move v9, v8

    move v10, v9

    move-object v7, v4

    move v6, v5

    :goto_0
    :try_start_2
    array-length v11, v1

    if-ge v6, v11, :cond_9

    aget-object v11, v1, v6

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v3

    const-string v13, "addr"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    aget-object v7, v11, v5

    goto :goto_1

    :cond_5
    aget-object v12, v11, v3

    const-string v13, "lmpver"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    aget-object v8, v11, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_6
    aget-object v12, v11, v3

    const-string v13, "lmpsubver"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    aget-object v9, v11, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_7
    aget-object v12, v11, v3

    const-string v13, "mfct"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    aget-object v10, v11, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v8, :cond_a

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->tsu:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v1, "lmp_ver"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v1, v3}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v9, :cond_b

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->tsu:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v1, "lmp_subver"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v1, v3}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v10, :cond_d

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->tsu:Lcom/oneplus/android/server/bluetooth/zta;

    const-string v0, "manufacturer_id"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v0, v1}, Lcom/oneplus/android/server/bluetooth/zta;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The undef reason - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v4, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot parse the value: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_2
    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/bluetooth/cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/cno;->dma()V

    return-void
.end method

.method private dma()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->cno:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/bluetooth/cno;->gck(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->ssp:Landroid/net/LocalSocket;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/bluetooth/cno;->gck(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->rtg:Landroid/net/LocalServerSocket;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/bluetooth/cno;->gck(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->cno:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->ssp:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/cno;->rtg:Landroid/net/LocalServerSocket;

    return-void
.end method

.method private gck(Ljava/io/Closeable;)V
    .locals 2

    const-string p0, "OpBluetoothStackEvent"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed closing, NPE: "

    goto :goto_0

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed closing : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method private gwm()V
    .locals 5

    const-string v0, "OpBluetoothStackEvent"

    const-string v1, "Server Socket Start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->kth:Lcom/oneplus/android/server/bluetooth/cno$you;

    if-eqz v1, :cond_0

    const-string v1, "Stopping old socket server"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/cno;->ugm()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/cno;->dma()V

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->rtg:Landroid/net/LocalServerSocket;

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Landroid/net/LocalServerSocket;

    const-string v2, "op_bluetooth_server_socket"

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->rtg:Landroid/net/LocalServerSocket;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->bio:Landroid/os/Handler;

    const/16 v2, 0xa0

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v1, Lcom/oneplus/android/server/bluetooth/cno$you;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/bluetooth/cno$you;-><init>(Lcom/oneplus/android/server/bluetooth/cno;)V

    iput-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->kth:Lcom/oneplus/android/server/bluetooth/cno$you;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/android/server/bluetooth/cno;->rtg:Landroid/net/LocalServerSocket;

    iput-object v2, p0, Lcom/oneplus/android/server/bluetooth/cno;->kth:Lcom/oneplus/android/server/bluetooth/cno$you;

    const-string p0, "Cannot establish the socket server"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Server Socket Start Success"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ibl(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "#\\$%"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process_put, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpBluetoothStackEvent"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/oneplus/android/server/bluetooth/cno;->zta:Landroid/content/Context;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "%\\^&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v5, v3

    if-lez v5, :cond_c

    const/4 v5, 0x0

    aget-object v6, v3, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_c

    aget-object v7, v6, v5

    const-string v8, "reason"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    aget-object v8, v6, v7

    const-string v9, "hci_error"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v6, v0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    return-void

    :cond_1
    const-string v6, ""

    const/4 v8, -0x1

    move/from16 v16, v5

    move-object v10, v6

    move-object v11, v10

    move v6, v7

    move v12, v8

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_0
    :try_start_1
    array-length v8, v3

    if-ge v6, v8, :cond_9

    aget-object v8, v3, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v5

    const-string v5, "addr"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v8, v7

    move-object v10, v5

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x0

    aget-object v9, v8, v5

    const-string v5, "err"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v12, v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    aget-object v9, v8, v5

    const-string v5, "name"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, v8, v7

    move-object v11, v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    aget-object v9, v8, v5

    const-string v5, "lmpver"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v5, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v13, v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    aget-object v9, v8, v5

    const-string v5, "lmpsubver"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    aget-object v5, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v14, v5

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    aget-object v9, v8, v5

    const-string v5, "mid"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    aget-object v5, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v15, v5

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    aget-object v9, v8, v5

    const-string v5, "class"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object v5, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v10, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] HCI Error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_a
    iget-object v2, v0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    if-eqz v2, :cond_c

    iget-object v9, v0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/android/server/bluetooth/sis;->bio(Ljava/lang/String;Ljava/lang/String;IIIII)V

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reason dones\'t define - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v6, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse the value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_2
    return-void
.end method

.method static synthetic igw(Lcom/oneplus/android/server/bluetooth/cno;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/cno;->oif(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/bluetooth/cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/cno;->ugm()V

    return-void
.end method

.method private oif(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process_get, value = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBluetoothStackEvent"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/bluetooth/cno;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->cno:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/bluetooth/cno;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/cno;->ssp:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/bluetooth/cno;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/cno;->cno:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->bio:Landroid/os/Handler;

    return-object p0
.end method

.method private ugm()V
    .locals 3

    const-string v0, "OpBluetoothStackEvent"

    const-string v1, "Server Socket Stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->bio:Landroid/os/Handler;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->bio:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->kth:Lcom/oneplus/android/server/bluetooth/cno$you;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/android/server/bluetooth/cno$you;->interrupt()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno;->kth:Lcom/oneplus/android/server/bluetooth/cno$you;

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/cno;->dma()V

    const-string p0, "Server Socket Stop Success"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/bluetooth/cno;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bluetooth/cno;->bvj(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/net/LocalSocket;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->ssp:Landroid/net/LocalSocket;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/net/LocalServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->rtg:Landroid/net/LocalServerSocket;

    return-object p0
.end method


# virtual methods
.method public obl(ILjava/lang/String;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write command: type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBluetoothStackEvent"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x4

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeCommand: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/android/server/bluetooth/cno;->ssp:Landroid/net/LocalSocket;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno;->ssp:Landroid/net/LocalSocket;

    invoke-virtual {p0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    add-int/2addr v0, v3

    invoke-virtual {p0, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "write error: "

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parse error: "

    goto :goto_0
.end method

.method public qbh()V
    .locals 2

    const-string v0, "OpBluetoothStackEvent"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/cno;->ugm()V

    return-void
.end method

.method public vdb(Lcom/oneplus/android/server/bluetooth/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/cno;->sis:Lcom/oneplus/android/server/bluetooth/sis;

    return-void
.end method

.method public ywr()V
    .locals 2

    const-string v0, "OpBluetoothStackEvent"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/cno;->gwm()V

    return-void
.end method

.method public zgw(Lcom/oneplus/android/server/bluetooth/kth;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/cno;->you:Lcom/oneplus/android/server/bluetooth/kth;

    return-void
.end method
