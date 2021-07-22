.class Lcom/android/settings/network/UsbTetherPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/UsbTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/UsbTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/UsbTetherPreferenceController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/network/UsbTetherPreferenceController$1;->this$0:Lcom/android/settings/network/UsbTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 85
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/network/UsbTetherPreferenceController$1;->this$0:Lcom/android/settings/network/UsbTetherPreferenceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/network/UsbTetherPreferenceController;->access$002(Lcom/android/settings/network/UsbTetherPreferenceController;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    .line 87
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    iget-object p1, p0, Lcom/android/settings/network/UsbTetherPreferenceController$1;->this$0:Lcom/android/settings/network/UsbTetherPreferenceController;

    invoke-static {p1, v1}, Lcom/android/settings/network/UsbTetherPreferenceController;->access$002(Lcom/android/settings/network/UsbTetherPreferenceController;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 89
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/android/settings/network/UsbTetherPreferenceController$1;->this$0:Lcom/android/settings/network/UsbTetherPreferenceController;

    const-string v0, "connected"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/UsbTetherPreferenceController;->access$102(Lcom/android/settings/network/UsbTetherPreferenceController;Z)Z

    .line 92
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/UsbTetherPreferenceController$1;->this$0:Lcom/android/settings/network/UsbTetherPreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
