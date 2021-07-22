.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$JrhBUKWHfufPJRVIa1tsHSbS9YY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$JrhBUKWHfufPJRVIa1tsHSbS9YY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$JrhBUKWHfufPJRVIa1tsHSbS9YY;

    invoke-direct {v0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$JrhBUKWHfufPJRVIa1tsHSbS9YY;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$JrhBUKWHfufPJRVIa1tsHSbS9YY;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiConfigController2$JrhBUKWHfufPJRVIa1tsHSbS9YY;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$loadCertificates$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
