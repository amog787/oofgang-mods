.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;,
        Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mControllerConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mPrivateHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 100
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    invoke-direct {v0, p2}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;)V

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    .line 102
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 103
    new-instance p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

    invoke-direct {p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

    return-void
.end method

.method private attachControllersToConnection()V
    .locals 4

    .line 406
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 408
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v2, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bind()V
    .locals 6

    const-string v0, ": Bind failed"

    .line 240
    iget-boolean v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v1, :cond_2

    .line 241
    sget-boolean v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    const-string v2, "MediaRouteProviderProxy"

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Binding"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 249
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    const/16 v3, 0x1001

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v1, :cond_2

    .line 253
    sget-boolean v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 257
    sget-boolean v3, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private createDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 4

    .line 304
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 309
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 310
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 317
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 4

    .line 281
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 286
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 287
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;

    invoke-direct {v0, p0, p1, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredRouteController;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-interface {v0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 294
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private detachControllersFromConnection()V
    .locals 3

    .line 413
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 415
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    invoke-interface {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->detachConnection()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 390
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    const/4 v1, 0x0

    .line 392
    iput-boolean v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 393
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->detachControllersFromConnection()V

    .line 394
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->dispose()V

    .line 395
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    :cond_0
    return-void
.end method

.method private findControllerById(I)Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;
    .locals 2

    .line 381
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 382
    invoke-interface {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->getControllerId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private shouldBind()Z
    .locals 2

    .line 224
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDiscoveryRequest()Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 232
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private unbind()V
    .locals 3

    .line 265
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v0, :cond_1

    .line 266
    sget-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    const-string v1, "MediaRouteProviderProxy"

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unbinding"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    .line 271
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    .line 273
    :try_start_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": unbindService failed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBinding()V
    .locals 1

    .line 216
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->bind()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    :goto_0
    return-void
.end method


# virtual methods
.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    .line 183
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 1

    .line 357
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 358
    sget-boolean p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Descriptor changed, descriptor="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    :cond_1
    return-void
.end method

.method onConnectionDied(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 339
    sget-boolean p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service connection died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    :cond_1
    return-void
.end method

.method onConnectionError(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V
    .locals 1

    .line 347
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 348
    sget-boolean p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service connection error - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouteProviderProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    :cond_1
    return-void
.end method

.method onConnectionReady(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    .line 328
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->attachControllersToConnection()V

    .line 330
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDiscoveryRequest()Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    :cond_0
    return-void
.end method

.method onControllerReleased(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;)V
    .locals 1

    .line 400
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mControllerConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 401
    invoke-interface {p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->detachConnection()V

    .line 402
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-void
.end method

.method public onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->createDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "initialMemberRouteId cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "routeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "routeGroupId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "routeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 140
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-void
.end method

.method onDynamicRouteDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;ILandroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;",
            "I",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    .line 369
    sget-boolean p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": DynamicRouteDescriptors changed, descriptors="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    invoke-direct {p0, p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->findControllerById(I)Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    move-result-object p0

    .line 373
    instance-of p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    if-eqz p1, :cond_1

    .line 374
    check-cast p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 375
    invoke-virtual {p0, p3, p4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;->onDynamicRoutesChanged(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 145
    sget-boolean p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    const-string v0, "MediaRouteProviderProxy"

    if-eqz p1, :cond_0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Connected"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-boolean p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz p1, :cond_4

    .line 150
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    if-eqz p2, :cond_1

    .line 152
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 153
    :goto_0
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 154
    new-instance p2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Landroid/os/Messenger;)V

    .line 155
    invoke-virtual {p2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->register()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    goto :goto_1

    .line 158
    :cond_2
    sget-boolean p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Registration failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Service returned invalid messenger binder"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 170
    sget-boolean p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->disconnect()V

    return-void
.end method

.method public rebindIfDisconnected()V
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->unbind()V

    .line 211
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->bind()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 187
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-nez v0, :cond_1

    .line 188
    sget-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 193
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 198
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 199
    sget-boolean v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mStarted:Z

    .line 204
    invoke-direct {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->updateBinding()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
