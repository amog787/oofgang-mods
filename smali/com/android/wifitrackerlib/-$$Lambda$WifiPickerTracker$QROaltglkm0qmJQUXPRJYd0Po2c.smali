.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$QROaltglkm0qmJQUXPRJYd0Po2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$QROaltglkm0qmJQUXPRJYd0Po2c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$QROaltglkm0qmJQUXPRJYd0Po2c;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$QROaltglkm0qmJQUXPRJYd0Po2c;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$QROaltglkm0qmJQUXPRJYd0Po2c;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$QROaltglkm0qmJQUXPRJYd0Po2c;

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

    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$3(Lcom/android/wifitrackerlib/PasspointWifiEntry;)Z

    move-result p0

    return p0
.end method
