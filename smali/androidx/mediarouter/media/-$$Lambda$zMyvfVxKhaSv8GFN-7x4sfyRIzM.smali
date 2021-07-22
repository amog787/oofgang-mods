.class public final synthetic Landroidx/mediarouter/media/-$$Lambda$zMyvfVxKhaSv8GFN-7x4sfyRIzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/mediarouter/media/-$$Lambda$zMyvfVxKhaSv8GFN-7x4sfyRIzM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/-$$Lambda$zMyvfVxKhaSv8GFN-7x4sfyRIzM;

    invoke-direct {v0}, Landroidx/mediarouter/media/-$$Lambda$zMyvfVxKhaSv8GFN-7x4sfyRIzM;-><init>()V

    sput-object v0, Landroidx/mediarouter/media/-$$Lambda$zMyvfVxKhaSv8GFN-7x4sfyRIzM;->INSTANCE:Landroidx/mediarouter/media/-$$Lambda$zMyvfVxKhaSv8GFN-7x4sfyRIzM;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter2Utils;->toRouteFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
