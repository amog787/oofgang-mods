.class Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 576
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    const/high16 v3, -0x80000000

    const-string v4, "BTDeviceDetailsFrg"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 578
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 580
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eq p1, v1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 586
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 587
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 588
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 589
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto/16 :goto_0

    .line 592
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 593
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 594
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)V

    .line 595
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    .line 598
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.twspods"

    const-string v2, "com.oos.onepluspods.service.MultiDeviceCoreService"

    .line 599
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "address"

    .line 600
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device"

    .line 601
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1700(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 605
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    .line 609
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 611
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 612
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_4

    .line 613
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 616
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    .line 617
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 619
    array-length v0, p2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    .line 620
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$2100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/Object;)I

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$2100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/Object;)I

    move-result v1

    .line 622
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    const/4 v3, 0x6

    aget-object p2, p2, v3

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$2100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/Object;)I

    move-result p2

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_VENDOR_SPECIFIC_HEADSET_EVENT address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", leftLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rightLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", boxLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2, v0, v1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;III)Ljava/lang/String;

    move-result-object p2

    .line 627
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->updateSumary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 632
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive e2 = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 635
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 636
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_6

    .line 639
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 640
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 641
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 642
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    :goto_0
    return-void
.end method
