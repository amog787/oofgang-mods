.class public Lcom/oneplus/server/hypnus/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:I = 0x2

.field private static final bvj:I = 0xd

.field private static final cno:Ljava/lang/String; = "com.oneplus.horae.IHoraeService"

.field private static final dma:I = 0x7

.field private static final gck:I = 0x5

.field private static final gwm:I = 0x33

.field private static final ibl:I = 0xe

.field private static final igw:I = 0x3

.field private static final kth:I = 0x1

.field private static final oif:I = 0xc

.field private static final qbh:I = 0xb

.field private static rtg:I = 0x0

.field private static final sis:Ljava/lang/String; = "HypnusDaemonUtil"

.field private static ssp:Lcom/oneplus/server/hypnus/zta; = null

.field private static final tsu:I = 0x0

.field private static final wtn:I = 0x4

.field private static final ywr:I = 0x8


# instance fields
.field private you:Landroid/os/IBinder$DeathRecipient;

.field private zta:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.hypnus.daemon.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/server/hypnus/zta;->rtg:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/server/hypnus/zta$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/server/hypnus/zta$zta;-><init>(Lcom/oneplus/server/hypnus/zta;)V

    iput-object v0, p0, Lcom/oneplus/server/hypnus/zta;->you:Landroid/os/IBinder$DeathRecipient;

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/zta;->you()Landroid/os/IBinder;

    return-void
.end method

.method public static declared-synchronized sis()Lcom/oneplus/server/hypnus/zta;
    .locals 2

    const-class v0, Lcom/oneplus/server/hypnus/zta;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/server/hypnus/zta;->ssp:Lcom/oneplus/server/hypnus/zta;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/server/hypnus/zta;

    invoke-direct {v1}, Lcom/oneplus/server/hypnus/zta;-><init>()V

    sput-object v1, Lcom/oneplus/server/hypnus/zta;->ssp:Lcom/oneplus/server/hypnus/zta;

    :cond_0
    sget-object v1, Lcom/oneplus/server/hypnus/zta;->ssp:Lcom/oneplus/server/hypnus/zta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private tsu()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/zta;->you()Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "HypnusDaemonUtil"

    const-string v0, "hypnusd cannot connect to HypnusService"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private you()Landroid/os/IBinder;
    .locals 4

    const-string v0, "HypnusDaemonUtil"

    const-string v1, "connectHypnusDataService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "horae"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/server/hypnus/zta;->you:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemote: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/server/hypnus/zta;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    return-object p1
.end method


# virtual methods
.method public cno(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/zta;->tsu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.oneplus.horae.IHoraeService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "HypnusDaemonUtil"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "horae hypnusSetScene has Exception : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public kth()Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/zta;->tsu()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public rtg(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/zta;->tsu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.oneplus.horae.IHoraeService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "HypnusDaemonUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "horae hypnusScreenStatus has Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public ssp(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/server/hypnus/zta;->tsu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.oneplus.horae.IHoraeService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/server/hypnus/zta;->zta:Landroid/os/IBinder;

    const/16 p1, 0xe

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "HypnusDaemonUtil"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "horae hypnusSetPackage has Exception : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
