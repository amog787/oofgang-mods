.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$VCBQWp0Yd-_9TYKb9qTFEq0hUb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$VCBQWp0Yd-_9TYKb9qTFEq0hUb8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$VCBQWp0Yd-_9TYKb9qTFEq0hUb8;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$VCBQWp0Yd-_9TYKb9qTFEq0hUb8;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$VCBQWp0Yd-_9TYKb9qTFEq0hUb8;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$VCBQWp0Yd-_9TYKb9qTFEq0hUb8;

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

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiConfiguration$11(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
