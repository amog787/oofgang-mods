.class Lcom/android/settings/network/BluetoothTetherPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/BluetoothTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/BluetoothTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/BluetoothTetherPreferenceController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/network/BluetoothTetherPreferenceController$1;->this$0:Lcom/android/settings/network/BluetoothTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/android/settings/network/BluetoothTetherPreferenceController$1;->this$0:Lcom/android/settings/network/BluetoothTetherPreferenceController;

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 88
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 87
    invoke-static {p1, p2}, Lcom/android/settings/network/BluetoothTetherPreferenceController;->access$002(Lcom/android/settings/network/BluetoothTetherPreferenceController;I)I

    .line 89
    iget-object p0, p0, Lcom/android/settings/network/BluetoothTetherPreferenceController$1;->this$0:Lcom/android/settings/network/BluetoothTetherPreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
