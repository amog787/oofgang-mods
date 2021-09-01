.class public final synthetic Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$dqlpS_UK-ymgHMT7xBSWMPjGRGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$dqlpS_UK-ymgHMT7xBSWMPjGRGw;->f$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/-$$Lambda$AddAppNetworksFragment$dqlpS_UK-ymgHMT7xBSWMPjGRGw;->f$0:Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->lambda$updateScanResultsToUi$3(Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
