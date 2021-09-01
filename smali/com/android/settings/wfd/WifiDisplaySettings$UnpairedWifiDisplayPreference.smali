.class Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;
.super Landroidx/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpairedWifiDisplayPreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 876
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 878
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 879
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x1040869

    .line 880
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 881
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 882
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 883
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 885
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 886
    sget p1, Lcom/android/settings/R$string;->wifi_display_status_in_use:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 888
    :goto_0
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 894
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 895
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->op_gps_off_warn_msg:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/Toast;->makeText(Landroid/content/Context;II)Landroidx/appcompat/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 899
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {p1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    return v0
.end method
