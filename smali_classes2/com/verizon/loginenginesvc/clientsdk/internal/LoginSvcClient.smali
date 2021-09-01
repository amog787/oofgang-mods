.class public abstract Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;
.super Ljava/lang/Object;
.source "LoginSvcClient.java"


# instance fields
.field private mBindTimeoutRunnable:Ljava/lang/Runnable;

.field private mConnection:Landroid/content/ServiceConnection;

.field protected final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mService:Lcom/verizon/loginenginesvc/ILoginEngineService;

.field private mSvcCallback:Lcom/verizon/loginenginesvc/IResponseCallback$Stub;

.field private mTargetSubscriptionId:Ljava/lang/Integer;

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Looper;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mService:Lcom/verizon/loginenginesvc/ILoginEngineService;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mInProgress:Z

    .line 107
    new-instance v0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;

    invoke-direct {v0, p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;-><init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V

    iput-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mConnection:Landroid/content/ServiceConnection;

    .line 137
    new-instance v0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$2;

    invoke-direct {v0, p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$2;-><init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V

    iput-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mSvcCallback:Lcom/verizon/loginenginesvc/IResponseCallback$Stub;

    .line 149
    new-instance v0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$3;

    invoke-direct {v0, p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$3;-><init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V

    iput-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mBindTimeoutRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$4;

    invoke-direct {v0, p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$4;-><init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V

    iput-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 48
    new-instance p2, Landroid/os/Handler;

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mBindTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Lcom/verizon/loginenginesvc/ILoginEngineService;)Lcom/verizon/loginenginesvc/ILoginEngineService;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mService:Lcom/verizon/loginenginesvc/ILoginEngineService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->performServiceRequest()V

    return-void
.end method

.method static synthetic access$400(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->handleBindError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->handleServiceResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->cleanup()V

    return-void
.end method

.method private declared-synchronized cleanup()V
    .locals 2

    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mBindTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mService:Lcom/verizon/loginenginesvc/ILoginEngineService;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mService:Lcom/verizon/loginenginesvc/ILoginEngineService;

    :cond_0
    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deserializeResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 199
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result-code"

    .line 201
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "missing response parameter: \'result-code\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleBindError(Ljava/lang/String;)V
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->cleanup()V

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->postError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private declared-synchronized handleServiceResponse(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :try_start_1
    invoke-direct {p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->deserializeResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$5;

    invoke-direct {v1, p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$5;-><init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error processing response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->postError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized performBind(Landroid/content/ComponentName;J)V
    .locals 3

    monitor-enter p0

    .line 213
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    const-class p1, Lcom/verizon/loginenginesvc/ILoginEngineService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 219
    iget-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mBindTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized performServiceRequest()V
    .locals 3

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->serializeRequest()Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mService:Lcom/verizon/loginenginesvc/ILoginEngineService;

    iget-object v2, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mSvcCallback:Lcom/verizon/loginenginesvc/IResponseCallback$Stub;

    invoke-interface {v1, v0, v2}, Lcom/verizon/loginenginesvc/ILoginEngineService;->request(Ljava/lang/String;Lcom/verizon/loginenginesvc/IResponseCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime exception performing query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->postError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw v0

    .line 234
    :catch_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private postError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;-><init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private serializeRequest()Ljava/lang/String;
    .locals 2

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->buildJsonRequest()Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x2

    .line 174
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error serializing request to JSON"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected buildJsonRequest()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calling-package"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->getOperationName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "operation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "subscription-id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized cancelRequest()V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getOperationName()Ljava/lang/String;
.end method

.method protected getServiceComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;->findService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method protected abstract handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected abstract handleResponse(Lorg/json/JSONObject;)V
.end method

.method protected abstract handleTimeout()V
.end method

.method public declared-synchronized sendRequest(J)V
    .locals 4

    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "service not found"

    const/4 p2, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->postError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 71
    :try_start_2
    iput-boolean v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mInProgress:Z

    .line 72
    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v1, 0x7d0

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    move-wide p1, v1

    .line 73
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->performBind(Landroid/content/ComponentName;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
