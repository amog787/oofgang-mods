.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$PasspointNetworkDetailsTracker$0W7xlLKDDotyH98hU3W2TjOfq8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointNetworkDetailsTracker$0W7xlLKDDotyH98hU3W2TjOfq8c;->f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointNetworkDetailsTracker$0W7xlLKDDotyH98hU3W2TjOfq8c;->f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;

    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$2$PasspointNetworkDetailsTracker(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result p0

    return p0
.end method
