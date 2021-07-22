.class public final synthetic Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;

    invoke-direct {v0}, Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;-><init>()V

    sput-object v0, Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;->INSTANCE:Landroidx/mediarouter/media/-$$Lambda$853YVfaGw0-G4oNUYI6Z1ujaq6k;

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

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter2Utils;->toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object p0

    return-object p0
.end method
