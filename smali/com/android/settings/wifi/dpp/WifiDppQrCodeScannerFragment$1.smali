.class Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;
.super Landroid/os/Handler;
.source "WifiDppQrCodeScannerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    const/16 v3, 0x20

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    .line 179
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 180
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 183
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getWifiConfigurations()Ljava/util/List;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v5

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 189
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 196
    iget-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    .line 197
    invoke-static {v6, v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$900(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$1002(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 200
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v0, v4, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    move v2, v1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const-string p1, "WifiDppQrCodeScanner"

    const-string v0, "can\'t find network from scan "

    .line 208
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    sget p1, Lcom/android/settings/R$string;->wifi_dpp_check_connection_try_again:I

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$1100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;I)V

    return-void

    .line 215
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$1300(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    .line 216
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$1200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    const/16 v2, 0x6af

    const/16 v3, 0x63c

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 222
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$800(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    goto/16 :goto_3

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$400(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$400(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-interface {v0, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;->onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$500(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-boolean v2, v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    if-eqz v2, :cond_8

    .line 161
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    goto :goto_1

    .line 163
    :cond_8
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$600(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    .line 167
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$700(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    .line 168
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 172
    :cond_9
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$800(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    goto :goto_3

    .line 125
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 134
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x2710

    .line 135
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_d

    .line 140
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-boolean v0, p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mIsInSetupWizard:Z

    if-eqz v0, :cond_b

    .line 141
    invoke-virtual {p1, v5}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    goto :goto_2

    .line 143
    :cond_b
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$100(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    :goto_2
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$200(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/qrcode/QrDecorateView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    .line 147
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$300(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    goto :goto_3

    .line 120
    :cond_c
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    :goto_3
    return-void
.end method
