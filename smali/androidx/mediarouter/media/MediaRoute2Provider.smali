.class Landroidx/mediarouter/media/MediaRoute2Provider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "MediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;,
        Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;,
        Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;,
        Landroidx/mediarouter/media/MediaRoute2Provider$Callback;,
        Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/mediarouter/media/MediaRoute2Provider$Callback;

.field final mControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaRouter2$RoutingController;",
            "Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerExecutor:Ljava/util/concurrent/Executor;

.field final mMediaRouter2:Landroid/media/MediaRouter2;

.field private final mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

.field private mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MR2Provider"

    const/4 v1, 0x3

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRoute2Provider$Callback;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    .line 67
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 68
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 77
    invoke-static {p1}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    .line 78
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRoute2Provider$Callback;

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroidx/mediarouter/media/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {p2, p1}, Landroidx/mediarouter/media/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandlerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static getMessengerFromRoutingController(Landroid/media/MediaRouter2$RoutingController;)Landroid/os/Messenger;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getControlHints()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "androidx.mediarouter.media.KEY_MESSENGER"

    .line 175
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/Messenger;

    :goto_0
    return-object v0
.end method

.method static getSessionIdForRouteController(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)Ljava/lang/String;
    .locals 2

    .line 181
    instance-of v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 184
    :cond_0
    check-cast p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    if-nez p0, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$refreshRoutes$0(Landroid/media/MediaRoute2Info;)Z
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 159
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 160
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public onCreateDynamicGroupRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
    .locals 2

    .line 114
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    .line 116
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mInitialMemberRouteId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 2

    .line 99
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 1

    .line 106
    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;

    invoke-direct {v0, p0, p1, p2}, Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 3

    .line 86
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandlerExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 88
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter2Utils;->toDiscoveryPreference(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)Landroid/media/RouteDiscoveryPreference;

    move-result-object p1

    .line 87
    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 89
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mHandlerExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaRouter2;->registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    .line 92
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p1, p0}, Landroid/media/MediaRouter2;->unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V

    :goto_0
    return-void
.end method

.method protected refreshRoutes()V
    .locals 3

    .line 134
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {v0}, Landroid/media/MediaRouter2;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;->INSTANCE:Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;

    .line 135
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 141
    :cond_0
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mRoutes:Ljava/util/List;

    .line 143
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;->INSTANCE:Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;

    .line 144
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroidx/mediarouter/media/-$$Lambda$jMO9OfSzscMxGho8zZuPtPiQlPo;->INSTANCE:Landroidx/mediarouter/media/-$$Lambda$jMO9OfSzscMxGho8zZuPtPiQlPo;

    .line 145
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 146
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 147
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    const/4 v2, 0x1

    .line 148
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->setSupportsDynamicGroupRoute(Z)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    .line 149
    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->addRoutes(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    .line 150
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->getRouteById(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Specified route not found. routeId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2Provider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter2;->transferTo(Landroid/media/MediaRoute2Info;)V

    return-void
.end method
