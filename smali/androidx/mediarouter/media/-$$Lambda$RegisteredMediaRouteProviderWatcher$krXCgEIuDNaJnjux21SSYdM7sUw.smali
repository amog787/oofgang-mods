.class public final synthetic Landroidx/mediarouter/media/-$$Lambda$RegisteredMediaRouteProviderWatcher$krXCgEIuDNaJnjux21SSYdM7sUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/mediarouter/media/-$$Lambda$RegisteredMediaRouteProviderWatcher$krXCgEIuDNaJnjux21SSYdM7sUw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/-$$Lambda$RegisteredMediaRouteProviderWatcher$krXCgEIuDNaJnjux21SSYdM7sUw;

    invoke-direct {v0}, Landroidx/mediarouter/media/-$$Lambda$RegisteredMediaRouteProviderWatcher$krXCgEIuDNaJnjux21SSYdM7sUw;-><init>()V

    sput-object v0, Landroidx/mediarouter/media/-$$Lambda$RegisteredMediaRouteProviderWatcher$krXCgEIuDNaJnjux21SSYdM7sUw;->INSTANCE:Landroidx/mediarouter/media/-$$Lambda$RegisteredMediaRouteProviderWatcher$krXCgEIuDNaJnjux21SSYdM7sUw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->lambda$getMediaRoute2ProviderServices$0(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method
