.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$PasspointNetworkDetailsTracker$GW4OvaOI_VBi99-1zq1zNrs27hE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointNetworkDetailsTracker$GW4OvaOI_VBi99-1zq1zNrs27hE;->f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$PasspointNetworkDetailsTracker$GW4OvaOI_VBi99-1zq1zNrs27hE;->f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;

    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$3$PasspointNetworkDetailsTracker(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-void
.end method
