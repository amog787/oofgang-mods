.class public final synthetic Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$ULBSkyh9kv2XCsmw-v2R9WCN6Vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkListController;

.field public final synthetic f$1:Landroid/telephony/SubscriptionInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkListController;Landroid/telephony/SubscriptionInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$ULBSkyh9kv2XCsmw-v2R9WCN6Vc;->f$0:Lcom/android/settings/network/MobileNetworkListController;

    iput-object p2, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$ULBSkyh9kv2XCsmw-v2R9WCN6Vc;->f$1:Landroid/telephony/SubscriptionInfo;

    iput p3, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$ULBSkyh9kv2XCsmw-v2R9WCN6Vc;->f$2:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$ULBSkyh9kv2XCsmw-v2R9WCN6Vc;->f$0:Lcom/android/settings/network/MobileNetworkListController;

    iget-object v1, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$ULBSkyh9kv2XCsmw-v2R9WCN6Vc;->f$1:Landroid/telephony/SubscriptionInfo;

    iget p0, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$ULBSkyh9kv2XCsmw-v2R9WCN6Vc;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/network/MobileNetworkListController;->lambda$update$0$MobileNetworkListController(Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
