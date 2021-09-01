.class Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;
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

    .line 212
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->val$dontShowAgain:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->val$preference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 216
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "checked"

    goto :goto_0

    :cond_0
    const-string p2, "unchecked"

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tether_settings_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checkbox_status"

    .line 219
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 223
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;->val$preference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 225
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
