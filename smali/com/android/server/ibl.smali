.class public Lcom/android/server/ibl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibl$you;,
        Lcom/android/server/ibl$sis;,
        Lcom/android/server/ibl$tsu;
    }
.end annotation


# static fields
.field private static bvj:Z = false

.field private static final cjf:I = 0x0

.field private static final dma:Ljava/lang/String; = ""

.field private static final ear:I = 0x55d4a80

.field private static final gck:Ljava/lang/String; = "com.OPGPS.action.debug"

.field private static gwm:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ibl:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ire:I = 0x5f5e100

.field private static final obl:I = 0x2

.field private static final oif:Ljava/lang/String; = "persist.sys.opgps.enable"

.field private static final oxb:I = 0x3

.field private static final qbh:Ljava/lang/String; = "GpsController"

.field private static ugm:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static vdb:Lcom/android/server/ibl; = null

.field private static final wtn:Ljava/lang/String; = "OPGPS"

.field private static final ywr:Z

.field private static final zgw:I = 0x1


# instance fields
.field private bio:Landroid/os/HandlerThread;

.field private cno:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/LocationManagerService$LocationProviderManager;",
            ">;"
        }
    .end annotation
.end field

.field private igw:Landroid/content/BroadcastReceiver;

.field private kth:Ljava/lang/Object;

.field private rtg:Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;

.field private sis:Lcom/oneplus/config/ConfigObserver;

.field private ssp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Lcom/android/server/ibl$you;

.field private you:Lcom/android/server/ibl$sis;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ibl;->ywr:Z

    const-string v0, "persist.sys.opgps.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibl;->bvj:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ibl;->vdb:Lcom/android/server/ibl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibl;->sis:Lcom/oneplus/config/ConfigObserver;

    new-instance v1, Lcom/android/server/ibl$you;

    invoke-direct {v1, p0, v0}, Lcom/android/server/ibl$you;-><init>(Lcom/android/server/ibl;Lcom/android/server/ibl$zta;)V

    iput-object v1, p0, Lcom/android/server/ibl;->tsu:Lcom/android/server/ibl$you;

    iput-object v0, p0, Lcom/android/server/ibl;->bio:Landroid/os/HandlerThread;

    new-instance v0, Lcom/android/server/ibl$zta;

    invoke-direct {v0, p0}, Lcom/android/server/ibl$zta;-><init>(Lcom/android/server/ibl;)V

    iput-object v0, p0, Lcom/android/server/ibl;->igw:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic bio(Lcom/android/server/ibl;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl;->ire(Lorg/json/JSONArray;)V

    return-void
.end method

.method private static bvj(II)I
    .locals 1

    const v0, 0x55d4a80

    if-le p0, v0, :cond_0

    const v0, 0x186a0

    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method private cgv(IZ)V
    .locals 0

    sget-object p0, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object p2, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private cjf(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/ibl;->ear(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->wtn(I)I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic cno(Lcom/android/server/ibl;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/ibl;->fto(ZI)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/ibl;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ibl;->sis:Lcom/oneplus/config/ConfigObserver;

    return-object p0
.end method

.method private static ear(I)Z
    .locals 4

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->gwm(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->bio(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :try_start_2
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    return v1
.end method

.method private fto(ZI)V
    .locals 4

    sget-boolean v0, Lcom/android/server/ibl;->ywr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleChangeForGpsProcess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " block:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    invoke-static {p2, v1}, Lcom/android/server/ibl;->bvj(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p2}, Lcom/android/server/ibl;->oxb(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    invoke-static {p2, v2}, Lcom/android/server/ibl;->bvj(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    invoke-static {p2, v2}, Lcom/android/server/ibl;->bvj(II)I

    move-result p2

    invoke-static {p1, p2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    invoke-static {p2, v2}, Lcom/android/server/ibl;->bvj(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p2}, Lcom/android/server/ibl;->oxb(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    invoke-static {p2, v1}, Lcom/android/server/ibl;->bvj(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    invoke-static {p2, v1}, Lcom/android/server/ibl;->bvj(II)I

    move-result p2

    invoke-static {p1, p2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic gck(Lcom/android/server/ibl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ibl;->zta:Landroid/content/Context;

    return-object p0
.end method

.method private gwm(I)I
    .locals 0

    const p0, 0x55d4a80

    if-le p1, p0, :cond_0

    const p0, 0x5f5e100

    if-ge p1, p0, :cond_0

    const p0, 0x186a0

    div-int/2addr p1, p0

    rsub-int p0, p1, 0x3e7

    return p0

    :cond_0
    rem-int/lit8 p1, p1, 0x64

    return p1
.end method

.method private hmo()V
    .locals 4

    const-string v0, "OPGPS"

    const-string v1, "scheduleChangeForConfigUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/ibl;->fto(ZI)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/ibl;->bvj:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/AppRecordManager;->ywr(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/ibl;->cjf(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/ibl;->fto(ZI)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private ibl(I)I
    .locals 0

    const p0, 0x55d4a80

    if-le p1, p0, :cond_0

    const p0, 0x5f5e100

    if-ge p1, p0, :cond_0

    const p0, 0x186a0

    rem-int/2addr p1, p0

    const p0, 0x5f45a60

    add-int/2addr p1, p0

    return p1

    :cond_0
    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method static synthetic igw(Lcom/android/server/ibl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl;->ibl(I)I

    move-result p0

    return p0
.end method

.method private ire(Lorg/json/JSONArray;)V
    .locals 10

    if-nez p1, :cond_0

    const-string p0, "OPGPS"

    const-string p1, "resolveConfigFromJSON jsonArray is null, return"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/ibl;->vdb:Lcom/android/server/ibl;

    if-nez v0, :cond_1

    const-string p0, "OPGPS"

    const-string p1, "resolveConfigFromJSON sInstance is null, return"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/ibl;->ywr:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveConfigFromJSON jsonArray:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    const-string v6, "persist.sys.opgps.enable"

    if-eqz v4, :cond_3

    const-string v7, "true"

    goto :goto_2

    :cond_3
    const-string v7, "false"

    :goto_2
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/ibl;->bvj:Z

    if-eq v6, v4, :cond_4

    move v2, v5

    :cond_4
    sput-boolean v4, Lcom/android/server/ibl;->bvj:Z

    :cond_5
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "blackgps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sget-object v6, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    move v6, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    monitor-enter v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v9, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v8

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v2, v5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    const-string p1, "OPGPS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] anyChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/android/server/ibl;->hmo()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/ibl;->bvj:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON mBlackGpsPkgSet:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON mGpsRequestUidSet:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string p1, "[OnlineConfig] resolveConfigFromJSON mBlockLocationUids:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "OPGPS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/ibl;->bvj:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON mBlackGpsPkgSet:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON mGpsRequestUidSet:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :catch_1
    move-exception p0

    :try_start_4
    const-string p1, "OPGPS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] JSONException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/ibl;->bvj:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON mBlackGpsPkgSet:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] resolveConfigFromJSON mGpsRequestUidSet:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPGPS"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :goto_6
    return-void

    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/ibl;->bvj:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPGPS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mBlackGpsPkgSet:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPGPS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mGpsRequestUidSet:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPGPS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mBlockLocationUids:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPGPS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method static synthetic kth(Lcom/android/server/ibl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ibl;->ugm()V

    return-void
.end method

.method private lqr(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/ibl;->ywr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unblockGps uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/ibl;->cgv(IZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/ibl;->veq(IZ)V

    return-void
.end method

.method private obl()V
    .locals 5

    const-string v0, "OPGPS"

    const-string v1, "initOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/ibl;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    new-instance v3, Lcom/android/server/ibl$tsu;

    invoke-direct {v3, p0}, Lcom/android/server/ibl$tsu;-><init>(Lcom/android/server/ibl;)V

    const-string v4, "GpsController"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ibl;->sis:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/ibl;->bvj(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xafc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private oif(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/ibl;->ywr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockGps uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/ibl;->bvj:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/ibl;->cgv(IZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/ibl;->veq(IZ)V

    return-void
.end method

.method public static oxb(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic qbh(Lcom/android/server/ibl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl;->oif(I)V

    return-void
.end method

.method static synthetic rtg()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ibl;->ywr:Z

    return v0
.end method

.method static synthetic sis()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ibl;->bvj:Z

    return v0
.end method

.method static synthetic ssp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic tsu()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    return-object v0
.end method

.method private ugm()V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dump # sEnable # "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/ibl;->bvj:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPGPS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # mBlackGpsPkgSet # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/ibl;->ibl:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # mGpsRequestUidSet # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/ibl;->gwm:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # mBlockLocationUids # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized vdb()Lcom/android/server/ibl;
    .locals 2

    const-class v0, Lcom/android/server/ibl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ibl;->vdb:Lcom/android/server/ibl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/ibl;

    invoke-direct {v1}, Lcom/android/server/ibl;-><init>()V

    sput-object v1, Lcom/android/server/ibl;->vdb:Lcom/android/server/ibl;

    :cond_0
    sget-object v1, Lcom/android/server/ibl;->vdb:Lcom/android/server/ibl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private veq(IZ)V
    .locals 4

    iget-object p2, p0, Lcom/android/server/ibl;->kth:Ljava/lang/Object;

    if-nez p2, :cond_0

    return-void

    :cond_0
    monitor-enter p2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ibl;->ssp:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v3, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->uid:I

    if-ne v3, p1, :cond_1

    sget-object v0, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/server/ibl;->cno:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/ibl;->rtg:Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;

    invoke-virtual {v1, v0}, Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;->applyRequirementsInnerLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    goto :goto_1

    :cond_4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic wtn(Lcom/android/server/ibl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl;->gwm(I)I

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/ibl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl;->lqr(I)V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/ibl;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl;->cjf(I)Z

    move-result p0

    return p0
.end method

.method static synthetic zta()Lcom/android/server/ibl;
    .locals 1

    sget-object v0, Lcom/android/server/ibl;->vdb:Lcom/android/server/ibl;

    return-object v0
.end method


# virtual methods
.method public zgw(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;)V
    .locals 3

    const-string v0, "OPGPS"

    const-string v1, "initEnv"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/ibl;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ibl;->rtg:Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;

    invoke-virtual {p2}, Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;->getLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ibl;->kth:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;->getReceivers()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ibl;->ssp:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;->getProviderManagers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ibl;->cno:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Lcom/android/server/location/LocationManagerService$LocationManagerServiceInner;->getBlockedUids()Ljava/util/HashSet;

    move-result-object p1

    sput-object p1, Lcom/android/server/ibl;->ugm:Ljava/util/HashSet;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "OPGPS_Thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/ibl;->bio:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/ibl$sis;

    iget-object p2, p0, Lcom/android/server/ibl;->bio:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/ibl$sis;-><init>(Lcom/android/server/ibl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.OPGPS.action.debug"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/ibl;->zta:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/ibl;->igw:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/ibl;->you:Lcom/android/server/ibl$sis;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object p2, p0, Lcom/android/server/ibl;->tsu:Lcom/android/server/ibl$you;

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->igw:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object p2, p0, Lcom/android/server/ibl;->tsu:Lcom/android/server/ibl$you;

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    invoke-direct {p0}, Lcom/android/server/ibl;->obl()V

    return-void
.end method
