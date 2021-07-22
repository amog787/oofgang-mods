.class Lcom/android/settings/network/MobileNetworkPreferenceController$2;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$100(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
