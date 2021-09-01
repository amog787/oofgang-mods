.class Lcom/android/settings/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 655
    iget-object p1, p0, Lcom/android/settings/TetherSettings$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "checked"

    goto :goto_0

    :cond_0
    const-string p1, "unchecked"

    .line 656
    :goto_0
    iget-object p2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "tether_settings_prefs"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 657
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "checkbox_status"

    .line 658
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    iget-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1600(Lcom/android/settings/TetherSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 661
    iget-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 663
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p1

    if-nez p1, :cond_2

    .line 664
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isVerizon()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1800(Lcom/android/settings/TetherSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 665
    iget-object p0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    const-wide/16 v0, 0x61a8

    invoke-static {p0, p2, v0, v1}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;IJ)V

    goto :goto_1

    .line 667
    :cond_1
    iget-object p0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0, p2}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;I)V

    goto :goto_1

    .line 670
    :cond_2
    iget-object p0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$1600(Lcom/android/settings/TetherSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;Landroidx/preference/SwitchPreference;I)V

    :goto_1
    return-void
.end method
