.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 59
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 7

    .line 222
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return v3

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 232
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_1

    .line 234
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 239
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const-string v5, "BluetoothPermissionRequest"

    const/4 v6, 0x1

    if-ne v0, v4, :cond_5

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    if-ne v0, v6, :cond_3

    .line 245
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    .line 248
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    .line 251
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad phonebookPermission: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_9

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    if-ne v0, v6, :cond_7

    .line 259
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    :cond_7
    if-ne v0, v4, :cond_8

    .line 262
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    .line 265
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad messagePermission: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    if-ne v0, v1, :cond_d

    .line 268
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    if-ne v0, v6, :cond_b

    .line 273
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_b
    if-ne v0, v4, :cond_c

    .line 276
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    goto :goto_0

    .line 279
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad simPermission: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_1
    return v3
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p0, "Phonebook Access"

    return-object p0

    .line 205
    :cond_0
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    const-string p0, "Message Access"

    return-object p0

    :cond_1
    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    const-string p0, "SIM Access"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 3

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 293
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 64
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "notification"

    const v3, 0x1080080

    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x2

    if-eqz v1, :cond_9

    const-string/jumbo v1, "user"

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 72
    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 77
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v6, 0x1

    .line 78
    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const-string v7, "android.bluetooth.device.extra.PACKAGE_NAME"

    .line 80
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    const-string v8, "android.bluetooth.device.extra.CLASS_NAME"

    .line 81
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 101
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    const-class v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x18000000

    .line 105
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {p2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {p2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 117
    :goto_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_3
    const-string v8, "power"

    .line 121
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 123
    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 124
    invoke-static {p1, v0, v7}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 133
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 135
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq v4, v5, :cond_7

    const/4 v9, 0x3

    if-eq v4, v9, :cond_6

    if-eq v4, v7, :cond_5

    .line 156
    sget v4, Lcom/android/settings/R$string;->bluetooth_connection_permission_request:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    sget v9, Lcom/android/settings/R$string;->bluetooth_connection_dialog_text:I

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v1, v10, v8

    aput-object v1, v10, v6

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 151
    :cond_5
    sget v4, Lcom/android/settings/R$string;->bluetooth_sap_request:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    sget v9, Lcom/android/settings/R$string;->bluetooth_sap_acceptance_dialog_text:I

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v1, v10, v8

    aput-object v1, v10, v6

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 146
    :cond_6
    sget v4, Lcom/android/settings/R$string;->bluetooth_map_request:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    sget v9, Lcom/android/settings/R$string;->bluetooth_map_acceptance_dialog_text:I

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v1, v10, v8

    aput-object v1, v10, v6

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 141
    :cond_7
    sget v4, Lcom/android/settings/R$string;->bluetooth_phonebook_request:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    sget v9, Lcom/android/settings/R$string;->bluetooth_pb_acceptance_dialog_text:I

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v1, v10, v8

    aput-object v1, v10, v6

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 163
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    const-string v10, "bluetooth_notification_channel"

    if-nez v9, :cond_8

    .line 164
    new-instance v9, Landroid/app/NotificationChannel;

    sget v11, Lcom/android/settings/R$string;->bluetooth:I

    .line 165
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 167
    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 169
    :cond_8
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p1, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 172
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 173
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, -0x1

    .line 178
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 179
    invoke-static {p1, v8, p2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 181
    invoke-static {p1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    const v0, 0x106001c

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 187
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 189
    iget p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_2

    :cond_9
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 195
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 196
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 198
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_a
    :goto_2
    return-void
.end method
