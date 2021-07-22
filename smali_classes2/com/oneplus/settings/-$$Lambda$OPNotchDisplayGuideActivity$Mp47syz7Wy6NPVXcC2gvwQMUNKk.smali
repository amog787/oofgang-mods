.class public final synthetic Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;

    invoke-direct {v0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;-><init>()V

    sput-object v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;

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

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->lambda$setOverlay$3(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
