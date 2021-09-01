.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;

    invoke-direct {v0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiSettings2$YMjSsDH3G5ATY01tOtfOmyk7hCA;

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

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSettings2;->lambda$onWifiEntriesChanged$4(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
