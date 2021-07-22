.class Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "OPBluetoothSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x5b36f014

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 77
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 87
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    goto :goto_2

    .line 84
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    goto :goto_2

    .line 81
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    goto :goto_2

    .line 90
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
