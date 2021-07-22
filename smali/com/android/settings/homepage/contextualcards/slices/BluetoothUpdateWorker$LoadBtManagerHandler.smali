.class Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;
.super Landroid/os/Handler;
.source "BluetoothUpdateWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadBtManagerHandler"
.end annotation


# static fields
.field private static sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoadBtManagerTask:Ljava/lang/Runnable;

.field private mWorker:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mContext:Landroid/content/Context;

    .line 133
    new-instance p1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothUpdateWorker$LoadBtManagerHandler$pyKuRKCgkqd93NX99d5mrlQ_kIE;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothUpdateWorker$LoadBtManagerHandler$pyKuRKCgkqd93NX99d5mrlQ_kIE;-><init>(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mLoadBtManagerTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->startLoadingBtManager(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->startLoadingBtManager()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->getLocalBtManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;
    .locals 3

    .line 121
    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "BluetoothUpdateWorker"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    .line 127
    :cond_0
    sget-object p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    return-object p0
.end method

.method private getLocalBtManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 2

    .line 143
    invoke-static {}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->access$400()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->access$400()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothUpdateWorker$LoadBtManagerHandler$bFnvBLd7f0Am1rgQotC_UH_flVA;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothUpdateWorker$LoadBtManagerHandler$bFnvBLd7f0Am1rgQotC_UH_flVA;-><init>(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)V

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getLocalBtManager$1(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mWorker:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;

    if-eqz p0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->access$500(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    const-string v0, "BluetoothUpdateWorker"

    const-string v1, "LoadBtManagerHandler: start loading..."

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 136
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->getLocalBtManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->access$402(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadBtManagerHandler took "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startLoadingBtManager()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mLoadBtManagerTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mLoadBtManagerTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startLoadingBtManager(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mWorker:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;

    .line 163
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->startLoadingBtManager()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getLocalBtManager$1$BluetoothUpdateWorker$LoadBtManagerHandler(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->lambda$getLocalBtManager$1(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method

.method public synthetic lambda$new$0$BluetoothUpdateWorker$LoadBtManagerHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->lambda$new$0()V

    return-void
.end method
