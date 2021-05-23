.class public Lcom/oneplus/server/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bio:J = 0x0L

.field public static final cno:Z

.field private static final dma:Ljava/lang/String; = "com.oneplus.android.screenOffCheckProcessState"

.field private static gck:Landroid/content/Intent; = null

.field private static igw:Landroid/app/AlarmManager; = null

.field private static final kth:Ljava/lang/String; = "deviceidle"

.field public static final rtg:Ljava/lang/String; = "DozeManager"

.field public static final ssp:Z = true

.field private static wtn:Landroid/app/PendingIntent;

.field private static ywr:Lcom/oneplus/server/tsu;


# instance fields
.field private sis:Landroid/media/AudioManager;

.field tsu:Landroid/content/BroadcastReceiver;

.field private you:Lcom/android/server/am/ActivityManagerService;

.field private zta:Landroid/os/IDeviceIdleController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/tsu;->cno:Z

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/oneplus/server/tsu;->bio:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/tsu;->zta:Landroid/os/IDeviceIdleController;

    new-instance v0, Lcom/oneplus/server/tsu$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/server/tsu$zta;-><init>(Lcom/oneplus/server/tsu;)V

    iput-object v0, p0, Lcom/oneplus/server/tsu;->tsu:Landroid/content/BroadcastReceiver;

    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/tsu;->zta:Landroid/os/IDeviceIdleController;

    return-void
.end method

.method private bio()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const-string v1, "get_silent_uid"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ":0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/server/tsu;->ywr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cno()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const-string v1, "get_uid"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ":0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/server/tsu;->ywr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dma()Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p0

    sget-boolean v1, Lcom/oneplus/server/tsu;->cno:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DozeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMusicActive: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private gck(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    iput-object p2, p0, Lcom/oneplus/server/tsu;->you:Lcom/android/server/am/ActivityManagerService;

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    sput-object p2, Lcom/oneplus/server/tsu;->igw:Landroid/app/AlarmManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.android.screenOffCheckProcessState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/server/tsu;->gck:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/tsu;->wtn:Landroid/app/PendingIntent;

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/server/tsu;->tsu:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private igw()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/server/tsu;->bio()[Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/server/tsu;->cno:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAudioUid getMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DozeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/oneplus/server/tsu;->sis:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/oneplus/server/tsu;->rtg(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->D2(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/oneplus/server/tsu;->ssp(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static kth()Lcom/oneplus/server/tsu;
    .locals 1

    sget-object v0, Lcom/oneplus/server/tsu;->ywr:Lcom/oneplus/server/tsu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/server/tsu;

    invoke-direct {v0}, Lcom/oneplus/server/tsu;-><init>()V

    sput-object v0, Lcom/oneplus/server/tsu;->ywr:Lcom/oneplus/server/tsu;

    :cond_0
    sget-object v0, Lcom/oneplus/server/tsu;->ywr:Lcom/oneplus/server/tsu;

    return-object v0
.end method

.method private rtg(I)Z
    .locals 4

    const-string v0, "DozeManager"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/tsu;->zta:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/server/tsu;->zta:Landroid/os/IDeviceIdleController;

    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getAppIdUserWhitelist()[I

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "checkWhiteUid uid="

    if-ltz v1, :cond_0

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is in whiteList!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/tsu;->zta:Landroid/os/IDeviceIdleController;

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is in tempWhiteList!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic sis()Landroid/app/AlarmManager;
    .locals 1

    sget-object v0, Lcom/oneplus/server/tsu;->igw:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private ssp(I)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/server/tsu;->you:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->bio(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/server/tsu;->you:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    const-string v2, "DozeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceStopApplication: silent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/server/tsu;->you:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic tsu(Lcom/oneplus/server/tsu;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/tsu;->igw()V

    return-void
.end method

.method public static wtn(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/server/tsu;->kth()Lcom/oneplus/server/tsu;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/server/tsu;->gck(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method static synthetic you()Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/oneplus/server/tsu;->wtn:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private ywr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget-boolean p0, Lcom/oneplus/server/tsu;->cno:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseAudioUidsStr():uids="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DozeManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method static synthetic zta()J
    .locals 2

    sget-wide v0, Lcom/oneplus/server/tsu;->bio:J

    return-wide v0
.end method
