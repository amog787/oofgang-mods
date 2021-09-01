.class public Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.super Ljava/lang/Object;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;,
        Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    }
.end annotation


# instance fields
.field private mBindRetryTimes:I

.field private mCallback:Lorg/codeaurora/internal/INetworkCallback;

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field mOn5gInfomationUpdateListener:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;

.field private mPackageName:Ljava/lang/String;

.field private mPhoneCount:I

.field private final mRsrpThresholds:[I

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    .line 53
    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    .line 337
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    .line 353
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 401
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 157
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPackageName:Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 161
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    .line 163
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->config_5g_signal_rsrp_thresholds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mRsrpThresholds:[I

    .line 165
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$array;->config_5g_signal_snr_thresholds:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->update5GIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;I)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getRsrpLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->binderService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/Client;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/INetworkCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    return-object p0
.end method

.method private binderService()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 201
    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method private static getLevel(I[I)I
    .locals 4

    .line 239
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p1, v0

    const/4 v2, 0x0

    if-lt v0, p0, :cond_3

    aget v0, p1, v2

    if-ge p0, v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    :goto_0
    array-length v0, p1

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_2

    .line 244
    aget v0, p1, v2

    if-ge v0, p0, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget v3, p1, v0

    if-gt p0, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method private getNrIconGroup(II)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getRsrpLevel(I)I
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mRsrpThresholds:[I

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getLevel(I[I)I

    move-result p0

    return p0
.end method

.method private getSaIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z
    .locals 0

    .line 315
    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$400(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;)",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;"
        }
    .end annotation

    .line 221
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;-><init>()V

    .line 224
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private initFiveGServiceState()V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFiveGServiceState mPhoneCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 256
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 6

    const-string v0, "initFiveGServiceState: Exception = "

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query 5G service state for phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrDcParam result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrBearerAllocation result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrSignalStrength result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUpperLayerIndInfo result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query5gConfigInfo result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p1

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrIconType result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x401

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    iget p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 284
    iget v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    mul-int/lit16 v4, v4, 0x7d0

    add-int/lit16 v4, v4, 0xbb8

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private update5GIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V
    .locals 2

    .line 302
    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 303
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getSaIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    .line 304
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getSaIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 306
    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getNrIconGroup(II)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    .line 307
    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    .line 310
    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method public isServiceConnected()Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnected:Z

    return p0
.end method

.method public registerListener(ILcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mOn5gInfomationUpdateListener:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;

    const/4 p2, 0x0

    .line 179
    iput p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    .line 180
    iput p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->isServiceConnected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->binderService()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState(I)V

    :goto_0
    return-void
.end method

.method public unregisterListener(I)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mOn5gInfomationUpdateListener:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mOn5gInfomationUpdateListener:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
