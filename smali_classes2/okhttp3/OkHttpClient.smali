.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lokhttp3/Authenticator;

.field final cache:Lokhttp3/Cache;

.field final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lokhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lokhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lokhttp3/CookieJar;

.field final dispatcher:Lokhttp3/Dispatcher;

.field final dns:Lokhttp3/Dns;

.field final eventListenerFactory:Lokhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    .line 123
    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    .line 126
    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 130
    new-instance v0, Lokhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 223
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 4

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    .line 228
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 229
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 230
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 231
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 232
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 233
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 234
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 235
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    .line 236
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    .line 237
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 238
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 241
    iget-object v0, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/ConnectionSpec;

    if-nez v2, :cond_1

    .line 242
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->isTls()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 249
    :cond_3
    invoke-direct {p0}, Lokhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 250
    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 251
    invoke-static {v0}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2

    .line 246
    :cond_4
    :goto_1
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 247
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 254
    :goto_2
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 255
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lokhttp3/CertificatePinner;->withCertificateChainCleaner(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 257
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 258
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    .line 259
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    .line 260
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    .line 261
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 262
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    .line 263
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 264
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient;->connectTimeout:I

    .line 265
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient;->readTimeout:I

    .line 266
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient;->writeTimeout:I

    .line 267
    iget p0, p1, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    :try_start_0
    const-string p0, "TLS"

    .line 288
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 289
    invoke-virtual {p0, p1, v0, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 290
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 292
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .line 273
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 275
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    .line 276
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_0

    .line 280
    aget-object p0, p0, v0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    return-object p0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected default trust managers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public authenticator()Lokhttp3/Authenticator;
    .locals 0

    .line 357
    iget-object p0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    return-object p0
.end method

.method public certificatePinner()Lokhttp3/CertificatePinner;
    .locals 0

    .line 353
    iget-object p0, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object p0
.end method

.method public connectTimeoutMillis()I
    .locals 0

    .line 298
    iget p0, p0, Lokhttp3/OkHttpClient;->connectTimeout:I

    return p0
.end method

.method public connectionPool()Lokhttp3/ConnectionPool;
    .locals 0

    .line 365
    iget-object p0, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    return-object p0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object p0, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public cookieJar()Lokhttp3/CookieJar;
    .locals 0

    .line 325
    iget-object p0, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    return-object p0
.end method

.method public dispatcher()Lokhttp3/Dispatcher;
    .locals 0

    .line 381
    iget-object p0, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    return-object p0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 0

    .line 337
    iget-object p0, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    return-object p0
.end method

.method eventListenerFactory()Lokhttp3/EventListener$Factory;
    .locals 0

    .line 412
    iget-object p0, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object p0
.end method

.method public followRedirects()Z
    .locals 0

    .line 373
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    return p0
.end method

.method public followSslRedirects()Z
    .locals 0

    .line 369
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    return p0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 349
    iget-object p0, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public interceptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object p0, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method internalCache()Lokhttp3/internal/cache/InternalCache;
    .locals 1

    .line 333
    iget-object v0, p0, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    :goto_0
    return-object p0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object p0, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object p0
.end method

.method public newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 2

    .line 419
    new-instance v0, Lokhttp3/RealCall;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object p0, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object p0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 0

    .line 317
    iget-object p0, p0, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 0

    .line 361
    iget-object p0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object p0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 0

    .line 321
    iget-object p0, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public readTimeoutMillis()I
    .locals 0

    .line 303
    iget p0, p0, Lokhttp3/OkHttpClient;->readTimeout:I

    return p0
.end method

.method public retryOnConnectionFailure()Z
    .locals 0

    .line 377
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return p0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 0

    .line 341
    iget-object p0, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 345
    iget-object p0, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public writeTimeoutMillis()I
    .locals 0

    .line 308
    iget p0, p0, Lokhttp3/OkHttpClient;->writeTimeout:I

    return p0
.end method
