.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$pqxDzYwc6dZqh70kHuMaEBXjaV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$pqxDzYwc6dZqh70kHuMaEBXjaV4;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$pqxDzYwc6dZqh70kHuMaEBXjaV4;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$pqxDzYwc6dZqh70kHuMaEBXjaV4;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiPickerTracker$pqxDzYwc6dZqh70kHuMaEBXjaV4;->f$1:I

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateNetworkRequestEntryScans$10(Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
