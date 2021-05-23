.class public Lcom/android/server/engineer/zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/zta$sis;,
        Lcom/android/server/engineer/zta$tsu;
    }
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "EngineerShell_NfcUtils"

.field private static igw:Z = true


# instance fields
.field private cno:Ljava/lang/String;

.field private final kth:Landroid/se/omapi/SEService$OnConnectedListener;

.field private rtg:Lcom/android/server/engineer/zta$sis;

.field private sis:Landroid/se/omapi/SEService;

.field private ssp:Ljava/lang/Thread;

.field private tsu:Ljava/util/Timer;

.field private you:Landroid/content/Context;

.field private final zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/engineer/zta;->zta:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/engineer/zta;->cno:Ljava/lang/String;

    new-instance v0, Lcom/android/server/engineer/zta$you;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/zta$you;-><init>(Lcom/android/server/engineer/zta;)V

    iput-object v0, p0, Lcom/android/server/engineer/zta;->kth:Landroid/se/omapi/SEService$OnConnectedListener;

    iput-object p1, p0, Lcom/android/server/engineer/zta;->you:Landroid/content/Context;

    return-void
.end method

.method private bio()V
    .locals 6

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    const-string v1, "EngineerShell_NfcUtils"

    if-eqz v0, :cond_0

    const-string v0, "connectService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "SE Service connecting ..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Landroid/se/omapi/SEService;

    iget-object v3, p0, Lcom/android/server/engineer/zta;->you:Landroid/content/Context;

    new-instance v4, Lcom/android/server/engineer/zta$tsu;

    invoke-direct {v4, p0}, Lcom/android/server/engineer/zta$tsu;-><init>(Lcom/android/server/engineer/zta;)V

    iget-object v5, p0, Lcom/android/server/engineer/zta;->kth:Landroid/se/omapi/SEService$OnConnectedListener;

    invoke-direct {v2, v3, v4, v5}, Landroid/se/omapi/SEService;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V

    iput-object v2, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    sget-boolean v2, Lcom/android/server/engineer/zta;->igw:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind to SE service, retry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Bind to SE Service exception received"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    if-nez v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    if-eqz v0, :cond_4

    const-string v0, "Bind to SE service success"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/engineer/zta$sis;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/zta$sis;-><init>(Lcom/android/server/engineer/zta;)V

    iput-object v0, p0, Lcom/android/server/engineer/zta;->rtg:Lcom/android/server/engineer/zta$sis;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/engineer/zta;->tsu:Ljava/util/Timer;

    iget-object p0, p0, Lcom/android/server/engineer/zta;->rtg:Lcom/android/server/engineer/zta$sis;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_3

    :cond_4
    const-string p0, "connectService: SE Service is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method static synthetic cno(Lcom/android/server/engineer/zta;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/zta;->tsu:Ljava/util/Timer;

    return-object p0
.end method

.method private dma(Landroid/se/omapi/Reader;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openSession: channelType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EngineerShell_NfcUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "openSession: Reader is null"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/se/omapi/Reader;->openSession()Landroid/se/omapi/Session;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "openSession: Session is null"

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error channel type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0}, Landroid/se/omapi/Session;->openBasicChannel([B)Landroid/se/omapi/Channel;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p0}, Landroid/se/omapi/Session;->openLogicalChannel([B)Landroid/se/omapi/Channel;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_4

    const-string p1, "openSession: Channel is null"

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openSession: reader - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/se/omapi/Reader;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    const-string v3, "openSession: transmit command"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Landroid/se/omapi/Channel;->transmit([B)[B

    move-result-object p1

    const-string v3, "openSession: session close"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/se/omapi/Session;->close()V

    invoke-virtual {v1}, Landroid/se/omapi/Session;->isClosed()Z

    move-result v3

    if-eq v3, v2, :cond_5

    const-string v2, "openSession: close session failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/se/omapi/Session;->close()V

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/se/omapi/Channel;->close()V

    :cond_6
    array-length p2, p1

    const/16 v1, 0x8

    if-ge p2, v1, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSession: return length is too short, length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lcom/android/server/engineer/zta;->kth([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
        -0x80t
        -0x36t
        -0x61t
        0x7ft
        0x0t
    .end array-data
.end method

.method private igw()Ljava/lang/String;
    .locals 9

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    const-string v1, "EngineerShell_NfcUtils"

    if-eqz v0, :cond_0

    const-string v0, "getCplc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Try to get CPLC from OMA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    if-eqz v2, :cond_5

    const-string v2, "Get Readers"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->getReaders()[Landroid/se/omapi/Reader;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    sget-boolean v7, Lcom/android/server/engineer/zta;->igw:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/se/omapi/Reader;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v6}, Landroid/se/omapi/Reader;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "eSE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    const-string p0, "getCplc: cannot get ESE Reader"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lcom/android/server/engineer/zta;->dma(Landroid/se/omapi/Reader;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "Exception occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v0
.end method

.method private static kth([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/engineer/zta;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/engineer/zta;->igw()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic sis()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    return v0
.end method

.method static synthetic ssp(Lcom/android/server/engineer/zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/engineer/zta;->ywr()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/engineer/zta;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/zta;->cno:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic you(Lcom/android/server/engineer/zta;)Landroid/se/omapi/SEService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    return-object p0
.end method

.method private ywr()V
    .locals 5

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    const-string v1, "EngineerShell_NfcUtils"

    if-eqz v0, :cond_0

    const-string v0, "shutdownService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/zta;->tsu:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/engineer/zta;->tsu:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/server/engineer/zta;->rtg:Lcom/android/server/engineer/zta$sis;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    :cond_2
    iput-object v0, p0, Lcom/android/server/engineer/zta;->rtg:Lcom/android/server/engineer/zta$sis;

    const-string v2, "SE Service shutdowning ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    invoke-virtual {v3}, Landroid/se/omapi/SEService;->shutdown()V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    sget-boolean v3, Lcom/android/server/engineer/zta;->igw:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind to SE service, retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "UnBind to SE Service exception received"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "shutdownService: Cannot shutdonw SE Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v2, "shutdownService: SE Service shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v0, p0, Lcom/android/server/engineer/zta;->sis:Landroid/se/omapi/SEService;

    return-void
.end method

.method static synthetic zta(Lcom/android/server/engineer/zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/engineer/zta;->bio()V

    return-void
.end method


# virtual methods
.method public gck()V
    .locals 2

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    if-eqz v0, :cond_0

    const-string v0, "EngineerShell_NfcUtils"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/engineer/zta;->qbh()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/engineer/zta$zta;

    invoke-direct {v1, p0}, Lcom/android/server/engineer/zta$zta;-><init>(Lcom/android/server/engineer/zta;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/engineer/zta;->ssp:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public qbh()V
    .locals 2

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    const-string v1, "EngineerShell_NfcUtils"

    if-eqz v0, :cond_0

    const-string v0, "stop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/zta;->ssp:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "showCplc: thread is not stop"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/engineer/zta;->ssp:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/engineer/zta;->ssp:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/android/server/engineer/zta;->ywr()V

    return-void
.end method

.method public wtn()Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    const-string v1, "EngineerShell_NfcUtils"

    if-eqz v0, :cond_0

    const-string v0, "getCplcValue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x19

    :goto_0
    iget-object v2, p0, Lcom/android/server/engineer/zta;->cno:Ljava/lang/String;

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-ltz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v3, 0x28

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    sget-boolean v0, Lcom/android/server/engineer/zta;->igw:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCplcValue, retry: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "getCplcValue failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/engineer/zta;->cno:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/server/engineer/zta;->cno:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
