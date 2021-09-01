.class Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;
.super Ljava/lang/Object;
.source "AddAppNetworksFragment.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UiConfigurationItem"
.end annotation


# instance fields
.field public final mDisplayedSsid:Ljava/lang/String;

.field public final mIndex:I

.field public mLevel:I

.field public final mWifiNetworkSuggestion:Landroid/net/wifi/WifiNetworkSuggestion;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/wifi/WifiNetworkSuggestion;II)V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mDisplayedSsid:Ljava/lang/String;

    .line 522
    iput-object p2, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mWifiNetworkSuggestion:Landroid/net/wifi/WifiNetworkSuggestion;

    .line 523
    iput p3, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mIndex:I

    .line 524
    iput p4, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment$UiConfigurationItem;->mLevel:I

    return-void
.end method
