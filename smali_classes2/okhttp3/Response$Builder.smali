.class public Lokhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lokhttp3/ResponseBody;

.field cacheResponse:Lokhttp3/Response;

.field code:I

.field handshake:Lokhttp3/Handshake;

.field headers:Lokhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lokhttp3/Response;

.field priorResponse:Lokhttp3/Response;

.field protocol:Lokhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Lokhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 304
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lokhttp3/Response;)V
    .locals 2

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 308
    iget-object v0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    iput-object v0, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 309
    iget-object v0, p1, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 310
    iget v0, p1, Lokhttp3/Response;->code:I

    iput v0, p0, Lokhttp3/Response$Builder;->code:I

    .line 311
    iget-object v0, p1, Lokhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    iput-object v0, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 313
    iget-object v0, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 314
    iget-object v0, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    iput-object v0, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 315
    iget-object v0, p1, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 316
    iget-object v0, p1, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 317
    iget-object v0, p1, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 318
    iget-wide v0, p1, Lokhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 319
    iget-wide v0, p1, Lokhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Lokhttp3/Response;)V
    .locals 0

    .line 412
    iget-object p0, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-nez p0, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "priorResponse.body != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 0

    .line 394
    iget-object p0, p2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-nez p0, :cond_3

    .line 396
    iget-object p0, p2, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    if-nez p0, :cond_2

    .line 398
    iget-object p0, p2, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    if-nez p0, :cond_1

    .line 400
    iget-object p0, p2, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    if-nez p0, :cond_0

    return-void

    .line 401
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 399
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 397
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 1

    .line 361
    iget-object v0, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    .locals 0

    .line 377
    iput-object p1, p0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method public build()Lokhttp3/Response;
    .locals 3

    .line 428
    iget-object v0, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    if-eqz v0, :cond_2

    .line 430
    iget v0, p0, Lokhttp3/Response$Builder;->code:I

    if-ltz v0, :cond_1

    .line 431
    iget-object v0, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Lokhttp3/Response;

    invoke-direct {v0, p0}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;)V

    return-object v0

    .line 431
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "message == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 430
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lokhttp3/Response$Builder;->code:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "protocol == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "request == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 388
    invoke-direct {p0, v0, p1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 389
    :cond_0
    iput-object p1, p0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    return-object p0
.end method

.method public code(I)Lokhttp3/Response$Builder;
    .locals 0

    .line 333
    iput p1, p0, Lokhttp3/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;
    .locals 0

    .line 343
    iput-object p1, p0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    return-object p0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    .locals 0

    .line 372
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 382
    invoke-direct {p0, v0, p1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 383
    :cond_0
    iput-object p1, p0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    return-object p0
.end method

.method public priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lokhttp3/Response$Builder;->checkPriorResponse(Lokhttp3/Response;)V

    .line 407
    :cond_0
    iput-object p1, p0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    return-object p0
.end method

.method public protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    .locals 0

    .line 328
    iput-object p1, p0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    .locals 0

    .line 423
    iput-wide p1, p0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    .locals 0

    .line 323
    iput-object p1, p0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    .locals 0

    .line 418
    iput-wide p1, p0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
