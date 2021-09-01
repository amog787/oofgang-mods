.class public Lcom/android/settings/wifi/NetworkRequestDialogActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "NetworkRequestDialogActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;


# static fields
.field private static TAG:Ljava/lang/String; = "NetworkRequestDialogActivity"


# instance fields
.field private mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mIsSpecifiedSsid:Z

.field private mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowingErrorDialog:Z

.field private mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    .line 140
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 109
    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 113
    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 88
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private showSingleSsidRequestDialog(Ljava/lang/String;Z)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 98
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DIALOG_REQUEST_SSID"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DIALOG_IS_TRYAGAIN"

    .line 101
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAbort()V
    .locals 1

    .line 187
    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->ABORT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClickConnectButton()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    .line 238
    sget v0, Lcom/android/settings/R$string;->network_connection_connecting_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickRescanButton()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    iput-boolean v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 251
    sget v0, Lcom/android/settings/R$string;->network_connection_searching_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    .line 77
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz p1, :cond_1

    .line 78
    sget p1, Lcom/android/settings/R$string;->network_connection_searching_message:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 271
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 272
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    .line 203
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    .line 202
    invoke-static {v0, p1, v0}, Lcom/android/settings/wifi/WifiUtils;->getWifiConfig(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 204
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 205
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showSingleSsidRequestDialog(Ljava/lang/String;Z)V

    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onMatch(Ljava/util/List;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 137
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 119
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 121
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerNetworkRequestMatchCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    if-nez p0, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V

    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 226
    sget p1, Lcom/android/settings/R$string;->network_connection_connect_failure:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, -0x1

    .line 228
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 216
    sget p1, Lcom/android/settings/R$string;->network_connection_connect_successful:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, -0x1

    .line 218
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V
    .locals 3

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 160
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->setRejectCallback(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DIALOG_ERROR_TYPE"

    .line 163
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 164
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v1, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    return-void
.end method
