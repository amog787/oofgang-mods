.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$EligibleCardChecker$j9fDhA-9Nn8fnDdaalBclkvyIuI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 0

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->lambda$bindSlice$0(Landroidx/slice/Slice;)V

    return-void
.end method
