.class Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherApBandPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;I)I

    .line 261
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;)Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;)Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
