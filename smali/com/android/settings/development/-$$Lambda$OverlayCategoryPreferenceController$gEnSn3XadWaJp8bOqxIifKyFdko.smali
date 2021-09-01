.class public final synthetic Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;

    invoke-direct {v0}, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;-><init>()V

    sput-object v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;->INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$gEnSn3XadWaJp8bOqxIifKyFdko;

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

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->lambda$setOverlay$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
