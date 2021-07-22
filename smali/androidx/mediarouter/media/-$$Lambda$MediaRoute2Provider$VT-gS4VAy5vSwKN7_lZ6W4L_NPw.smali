.class public final synthetic Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;

    invoke-direct {v0}, Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;-><init>()V

    sput-object v0, Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;->INSTANCE:Landroidx/mediarouter/media/-$$Lambda$MediaRoute2Provider$VT-gS4VAy5vSwKN7_lZ6W4L_NPw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->lambda$refreshRoutes$0(Landroid/media/MediaRoute2Info;)Z

    move-result p0

    return p0
.end method
