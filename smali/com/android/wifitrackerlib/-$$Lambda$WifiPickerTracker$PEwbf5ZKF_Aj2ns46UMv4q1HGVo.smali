.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PEwbf5ZKF_Aj2ns46UMv4q1HGVo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic f$1:Landroid/net/wifi/WifiInfo;

.field public final synthetic f$2:Landroid/net/NetworkInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PEwbf5ZKF_Aj2ns46UMv4q1HGVo;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-object p2, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PEwbf5ZKF_Aj2ns46UMv4q1HGVo;->f$1:Landroid/net/wifi/WifiInfo;

    iput-object p3, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PEwbf5ZKF_Aj2ns46UMv4q1HGVo;->f$2:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PEwbf5ZKF_Aj2ns46UMv4q1HGVo;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PEwbf5ZKF_Aj2ns46UMv4q1HGVo;->f$1:Landroid/net/wifi/WifiInfo;

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$PEwbf5ZKF_Aj2ns46UMv4q1HGVo;->f$2:Landroid/net/NetworkInfo;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$conditionallyCreateConnectedStandardWifiEntry$18$WifiPickerTracker(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
