.class public Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;,
        Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;
    }
.end annotation


# instance fields
.field private mChooseDifferentNetwork:Landroid/widget/Button;

.field private mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

.field private mLatestStatusCode:I

.field private mWifiApPictureView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getResultIntent(ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;ILandroid/content/Intent;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    return-void
.end method

.method private getResultIntent(ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 127
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.provider.extra.EASY_CONNECT_ERROR_CODE"

    .line 128
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_2

    .line 133
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 p2, 0x0

    move v0, p2

    .line 142
    :goto_0
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 148
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move v4, p2

    .line 149
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 150
    aget v5, v3, v4

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    :catch_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

    .line 161
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_3

    .line 164
    array-length p1, p4

    if-eqz p1, :cond_3

    const-string p1, "android.provider.extra.EASY_CONNECT_BAND_LIST"

    .line 165
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_3
    return-object p0
.end method

.method private getSsid()Ljava/lang/String;
    .locals 1

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    .line 384
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 385
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasRetryButton(I)Z
    .locals 0

    const/4 p0, -0x3

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEasyConnectHandshaking()Z
    .locals 1

    .line 425
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$3(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 2

    .line 305
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 311
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$1;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onConfiguratorSuccess(I)V

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$1;)V

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedSsid()Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedChannels()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getBandArray()[I

    move-result-object p1

    .line 313
    invoke-virtual {v0, p2, p0, v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;->onClickChooseDifferentNetwork()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;)V
    .locals 0

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 355
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 356
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    .line 357
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary()V

    return-void
.end method

.method private synthetic lambda$showErrorUi$2(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showSuccessUi$0(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private synthetic lambda$showSuccessUi$1(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showErrorUi(ILandroid/content/Intent;Z)V
    .locals 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 241
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected Wi-Fi DPP error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :pswitch_0
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 179
    :pswitch_1
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_authentication_or_configuration:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 184
    :pswitch_2
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_not_compatible:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 188
    :pswitch_3
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_authentication_or_configuration:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_0

    return-void

    .line 197
    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    if-eq p1, p2, :cond_1

    .line 202
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 205
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    return-void

    .line 198
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried restarting EasyConnectSession but stillreceiving EASY_CONNECT_EVENT_FAILURE_BUSY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :pswitch_5
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_timeout:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 214
    :pswitch_6
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_generic:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 218
    :pswitch_7
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_not_supported:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 219
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 218
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 223
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Wi-Fi DPP configurator used a non-PSK/non-SAEnetwork to handshake"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :pswitch_9
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_cannot_find_network:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 231
    :pswitch_a
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_enrollee_authentication:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 236
    :pswitch_b
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_failure_enrollee_rejected_configuration:I

    .line 237
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 244
    :goto_0
    sget v2, Lcom/android/settings/R$string;->wifi_dpp_could_not_add_device:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->wifi_dpp_error:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 249
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->hasRetryButton(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->retry:I

    invoke-virtual {v3, v4, v5}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v1, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 254
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 256
    :goto_1
    new-instance v3, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$AqS1Hg8cpMDq_7d0SH-E1DCf6rk;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$AqS1Hg8cpMDq_7d0SH-E1DCf6rk;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 262
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_dpp_sharing_wifi_with_this_device:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 266
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p3, :cond_5

    .line 269
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSuccessUi(Z)V
    .locals 4

    .line 104
    sget v0, Lcom/android/settings/R$drawable;->ic_devices_check_circle_green_32dp:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    .line 105
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_wifi_shared_with_device:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    sget v3, Lcom/android/settings/R$drawable;->wifi_dpp_success:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_dpp_add_another_device:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$dntOA5CSz7vdUN8fKOi6A_4uTjw;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$dntOA5CSz7vdUN8fKOi6A_4uTjw;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$0F_t6DDfzPLj-kfZO-w4l4LdPjU;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$0F_t6DDfzPLj-kfZO-w4l4LdPjU;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 121
    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_0
    return-void
.end method

.method private startWifiDppConfiguratorInitiator()V
    .locals 3

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 392
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result v1

    .line 397
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v2, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 399
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;I)V

    return-void
.end method

.method private updateSummary()V
    .locals 5

    .line 431
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_dpp_sharing_wifi_with_this_device:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_dpp_add_device_to_wifi:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method protected isFooterAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$onCreate$3$WifiDppAddDeviceFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onCreate$3(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$4$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$5$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onViewCreated$5(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$6$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onViewCreated$6(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showErrorUi$2$WifiDppAddDeviceFragment(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$showErrorUi$2(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showSuccessUi$0$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$showSuccessUi$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showSuccessUi$1$WifiDppAddDeviceFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$showSuccessUi$1(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 410
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 412
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 293
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_latest_status_code"

    .line 296
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 300
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 302
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$Xi7v8lbNG6AHnwMwvxrIKuLQHYA;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 322
    sget p0, Lcom/android/settings/R$layout;->wifi_dpp_add_device_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    .line 419
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 376
    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    const-string v1, "key_latest_status_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 328
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 330
    sget v0, Lcom/android/settings/R$drawable;->ic_devices_other_32dp:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 333
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getInformation()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 336
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_device_found:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(Ljava/lang/String;)V

    .line 341
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary()V

    .line 342
    sget v0, Lcom/android/settings/R$id;->wifi_ap_picture_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    .line 344
    sget v0, Lcom/android/settings/R$id;->choose_different_network:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    .line 345
    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$gzpbkmWTjT17nBVoNoD9odnQ1ks;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$gzpbkmWTjT17nBVoNoD9odnQ1ks;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 350
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$P-dookd_X5dhJOm7Vf3Fqshw60Q;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$P-dookd_X5dhJOm7Vf3Fqshw60Q;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_dpp_share_wifi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 353
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$co6MlaQuNMuge8n_bCbWqRO3VEQ;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$co6MlaQuNMuge8n_bCbWqRO3VEQ;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_4

    .line 361
    iget p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 362
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 364
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 365
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    :cond_4
    :goto_1
    return-void
.end method
