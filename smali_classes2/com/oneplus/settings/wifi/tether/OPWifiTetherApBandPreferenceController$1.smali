.class Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;
.super Ljava/lang/Object;
.source "OPWifiTetherApBandPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->access$100(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->access$002(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;I)I

    .line 204
    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->access$200(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-virtual {p2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->access$300(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->access$200(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
