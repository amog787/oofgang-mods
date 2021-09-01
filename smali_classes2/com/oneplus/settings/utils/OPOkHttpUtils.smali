.class public Lcom/oneplus/settings/utils/OPOkHttpUtils;
.super Ljava/lang/Object;
.source "OPOkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;
    }
.end annotation


# static fields
.field private static final LOCKER:[B

.field private static mInstance:Lcom/oneplus/settings/utils/OPOkHttpUtils;


# instance fields
.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 20
    sput-object v0, Lcom/oneplus/settings/utils/OPOkHttpUtils;->LOCKER:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 35
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 36
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 37
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 38
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getInstance()Lcom/oneplus/settings/utils/OPOkHttpUtils;
    .locals 2

    .line 47
    sget-object v0, Lcom/oneplus/settings/utils/OPOkHttpUtils;->mInstance:Lcom/oneplus/settings/utils/OPOkHttpUtils;

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcom/oneplus/settings/utils/OPOkHttpUtils;->LOCKER:[B

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/utils/OPOkHttpUtils;->mInstance:Lcom/oneplus/settings/utils/OPOkHttpUtils;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/oneplus/settings/utils/OPOkHttpUtils;

    invoke-direct {v1}, Lcom/oneplus/settings/utils/OPOkHttpUtils;-><init>()V

    sput-object v1, Lcom/oneplus/settings/utils/OPOkHttpUtils;->mInstance:Lcom/oneplus/settings/utils/OPOkHttpUtils;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/utils/OPOkHttpUtils;->mInstance:Lcom/oneplus/settings/utils/OPOkHttpUtils;

    return-object v0
.end method

.method private setRequestBody(Ljava/util/Map;)Lokhttp3/RequestBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .line 117
    new-instance p0, Lokhttp3/FormBody$Builder;

    invoke-direct {p0}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public postDataAsyn(Ljava/lang/String;Ljava/util/Map;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p2}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->setRequestBody(Ljava/util/Map;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 90
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 91
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/oneplus/settings/utils/OPOkHttpUtils$1;

    invoke-direct {p2, p0, p3}, Lcom/oneplus/settings/utils/OPOkHttpUtils$1;-><init>(Lcom/oneplus/settings/utils/OPOkHttpUtils;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
