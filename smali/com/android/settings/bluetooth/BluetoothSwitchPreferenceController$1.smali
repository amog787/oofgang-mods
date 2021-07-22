.class Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 135
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    goto :goto_1

    .line 143
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    .line 145
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
