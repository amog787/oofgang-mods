.class Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;
.super Ljava/lang/Object;
.source "OPBluetoothCarKitDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$100(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->addCarkit(Landroid/bluetooth/BluetoothDevice;)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$200(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.action.intent.UpdateBluetoothCarkitDevice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;->this$0:Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "blue_car_add"

    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
