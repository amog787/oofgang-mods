.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$DitgtO9_1wALYexVACURnNqwLlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$DitgtO9_1wALYexVACURnNqwLlI;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput p2, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$DitgtO9_1wALYexVACURnNqwLlI;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$DitgtO9_1wALYexVACURnNqwLlI;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$DitgtO9_1wALYexVACURnNqwLlI;->f$1:I

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$conditionallyCreateConnectedStandardWifiEntry$17$WifiPickerTracker(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
