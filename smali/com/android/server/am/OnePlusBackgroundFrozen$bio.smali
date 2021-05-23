.class Lcom/android/server/am/OnePlusBackgroundFrozen$bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bio"
.end annotation


# static fields
.field private static final cno:I = 0x3eb

.field private static final rtg:I = 0x3e8

.field private static final ssp:I = 0x3e9

.field private static final tsu:Ljava/lang/String; = "op.hans.IHansComunication"


# instance fields
.field final synthetic sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

.field private you:Landroid/os/IBinder$DeathRecipient;

.field private zta:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    new-instance p1, Lcom/android/server/am/OnePlusBackgroundFrozen$bio$zta;

    invoke-direct {p1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio$zta;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen$bio;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->you:Landroid/os/IBinder$DeathRecipient;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "sys.hans.enable"

    const-string p1, "true"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private rtg()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->tsu()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private tsu()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const-string v2, "op.hans.IHansComunication"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->you:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    const-string p0, "IComunication RemoteException!"

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const-string p0, "connectHansService fail"

    :goto_0
    invoke-static {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusBackgroundFrozen$bio;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    return-object p1
.end method


# virtual methods
.method public sis(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->rtg()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "op.hans.IHansComunication"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    const/16 p1, 0x3e9

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_1
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public you(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->rtg()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "op.hans.IHansComunication"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->zta:Landroid/os/IBinder;

    const/16 p1, 0x3eb

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_1
    :goto_2
    const/4 p0, -0x1

    return p0
.end method
