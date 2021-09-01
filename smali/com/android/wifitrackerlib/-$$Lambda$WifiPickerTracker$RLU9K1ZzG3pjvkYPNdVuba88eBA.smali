.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$RLU9K1ZzG3pjvkYPNdVuba88eBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$RLU9K1ZzG3pjvkYPNdVuba88eBA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$RLU9K1ZzG3pjvkYPNdVuba88eBA;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$RLU9K1ZzG3pjvkYPNdVuba88eBA;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$RLU9K1ZzG3pjvkYPNdVuba88eBA;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$RLU9K1ZzG3pjvkYPNdVuba88eBA;

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

    check-cast p1, Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$4(Lcom/android/wifitrackerlib/OsuWifiEntry;)Z

    move-result p0

    return p0
.end method
