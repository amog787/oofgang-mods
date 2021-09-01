.class Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;
.super Ljava/lang/Object;
.source "OPWiFi6StandardHotSpotPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->setSoftApEnable11AX(Landroidx/preference/SwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

.field final synthetic val$switchpreference:Landroidx/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;Landroidx/preference/SwitchPreference;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

    iput-object p2, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;->val$switchpreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->access$000(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "softap_enable_11ax"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->access$100(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;)Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;->this$0:Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    const-string p0, "wifi6"

    const-string p1, "status"

    const-string p2, "on"

    .line 65
    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$1;->val$switchpreference:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
