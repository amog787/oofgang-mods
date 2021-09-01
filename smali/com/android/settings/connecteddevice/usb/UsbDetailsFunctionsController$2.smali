.class Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;
.super Ljava/lang/Object;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;

.field final synthetic val$preference:Lcom/android/settings/widget/RadioButtonPreference;

.field final synthetic val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;Landroid/widget/CheckBox;Lcom/android/settings/widget/RadioButtonPreference;Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$preference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "checked"

    goto :goto_0

    :cond_0
    const-string p1, "unchecked"

    .line 233
    :goto_0
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "tether_settings_prefs"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 234
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "checkbox_status"

    .line 235
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$100(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 238
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 240
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$preference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 244
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isVerizon()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$200(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 245
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    const-wide/16 p1, 0x61a8

    invoke-static {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$300(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;J)V

    goto :goto_1

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$400(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {p1, p2, p2, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    :goto_1
    return-void
.end method
