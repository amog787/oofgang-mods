.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mRequest:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    return-void
.end method

.method private parseIntent()Z
    .locals 5

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 156
    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    .line 157
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x78

    .line 159
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 163
    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.bluetooth.extra.APP_LABEL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 170
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    const-string p0, "RequestPermissionHelperActivity"

    const-string v0, "Error: there\'s a problem starting Bluetooth"

    .line 172
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v4

    :cond_4
    return v1
.end method


# virtual methods
.method createDialog()V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 82
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto/16 :goto_4

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 106
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_disablement:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_1
    sget v1, Lcom/android/settings/R$string;->bluetooth_ask_disablement_no_name:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    .line 84
    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-gez v1, :cond_4

    .line 85
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 86
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_enablement:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_3
    sget v1, Lcom/android/settings/R$string;->bluetooth_ask_enablement_no_name:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    if-nez v1, :cond_6

    .line 89
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 90
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_lasting_discovery:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 93
    :cond_5
    sget v1, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_lasting_discovery_no_name:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    .line 96
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 97
    sget v5, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_discovery:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    .line 97
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 99
    :cond_7
    sget v4, Lcom/android/settings/R$string;->bluetooth_ask_enablement_and_discovery_no_name:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 99
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 111
    :goto_4
    sget v1, Lcom/android/settings/R$string;->allow:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 112
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    sget v1, Lcom/android/settings/R$string;->deny:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 119
    iget p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    goto :goto_0

    .line 122
    :cond_1
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string p2, "no_bluetooth"

    .line 123
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 126
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 127
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->auto_confirm_bluetooth_activation_dialog:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    return-void
.end method
