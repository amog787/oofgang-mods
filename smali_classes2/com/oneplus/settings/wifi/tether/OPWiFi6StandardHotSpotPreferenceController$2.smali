.class Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$2;
.super Ljava/lang/Object;
.source "OPWiFi6StandardHotSpotPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 72
    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$2;->this$0:Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

    iput-object p2, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$2;->val$switchpreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$2;->val$switchpreference:Landroidx/preference/SwitchPreference;

    .line 76
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController$2;->this$0:Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

    .line 75
    invoke-static {p0}, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;->access$200(Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "softap_enable_11ax"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
