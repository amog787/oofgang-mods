.class Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetNetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->p2pFactoryReset(Landroid/content/Context;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 109
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v1, "netpolicy"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 130
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 131
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearAllDevices()V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 142
    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 141
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->factoryReset()V

    if-eqz p1, :cond_4

    .line 144
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-boolean p1, p1, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 151
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->reset_network_complete_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->reset_esim_error_title:I

    .line 163
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->reset_esim_error_msg:I

    .line 164
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x104000a

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 162
    invoke-static {p1, p0}, Lcom/android/settings/ResetNetworkConfirm;->access$302(Lcom/android/settings/ResetNetworkConfirm;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
