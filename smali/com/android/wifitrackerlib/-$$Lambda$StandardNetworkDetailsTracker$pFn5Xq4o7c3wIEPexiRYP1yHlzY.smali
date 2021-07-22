.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$StandardNetworkDetailsTracker$pFn5Xq4o7c3wIEPexiRYP1yHlzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$StandardNetworkDetailsTracker$pFn5Xq4o7c3wIEPexiRYP1yHlzY;->f$0:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$StandardNetworkDetailsTracker$pFn5Xq4o7c3wIEPexiRYP1yHlzY;->f$0:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->lambda$cacheNewScanResults$0$StandardNetworkDetailsTracker(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
