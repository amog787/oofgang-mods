.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$ZaDLRSIZwSj9aj6lj58U997Kj9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$ZaDLRSIZwSj9aj6lj58U997Kj9s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$ZaDLRSIZwSj9aj6lj58U997Kj9s;

    invoke-direct {v0}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$ZaDLRSIZwSj9aj6lj58U997Kj9s;-><init>()V

    sput-object v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$ZaDLRSIZwSj9aj6lj58U997Kj9s;->INSTANCE:Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$ZaDLRSIZwSj9aj6lj58U997Kj9s;

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

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->lambda$updateAccessPoints$1(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
