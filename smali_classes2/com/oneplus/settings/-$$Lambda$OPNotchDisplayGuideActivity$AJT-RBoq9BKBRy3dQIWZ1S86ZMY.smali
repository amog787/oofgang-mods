.class public final synthetic Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;

    invoke-direct {v0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;-><init>()V

    sput-object v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;

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

    invoke-static {p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->lambda$setOverlay$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
