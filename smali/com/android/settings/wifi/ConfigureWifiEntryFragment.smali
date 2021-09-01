.class public Lcom/android/settings/wifi/ConfigureWifiEntryFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConfigureWifiEntryFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase2;


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mUiController:Lcom/android/settings/wifi/WifiConfigController2;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->handleSubmitAction()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->handleCancelAction()V

    return-void
.end method

.method private setupNetworkDetailsTracker()V
    .locals 14

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 214
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigureWifiEntryFragment{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 217
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v8, Lcom/android/settings/wifi/ConfigureWifiEntryFragment$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment$1;-><init>(Lcom/android/settings/wifi/ConfigureWifiEntryFragment;Ljava/time/ZoneId;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 228
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 229
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 230
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/NetworkScoreManager;

    new-instance v6, Landroid/os/Handler;

    .line 231
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 232
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v13, "key_chosen_wifientry_key"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 225
    invoke-static/range {v1 .. v13}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->handleSubmitAction()V

    return-void
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x708

    return p0
.end method

.method public getMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    return-object p0
.end method

.method handleCancelAction()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method handleSubmitAction()V
    .locals 3

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 198
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mUiController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const-string v2, "network_config_key"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, -0x1

    .line 199
    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 200
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$ConfigureWifiEntryFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$ConfigureWifiEntryFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->setupNetworkDetailsTracker()V

    .line 83
    iget-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 103
    sget p3, Lcom/android/settings/R$layout;->wifi_add_network_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102001b

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 108
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p2, 0x1020019

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    const p2, 0x102001a

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mCancelBtn:Landroid/widget/Button;

    .line 113
    iget-object p2, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/wifi/-$$Lambda$ConfigureWifiEntryFragment$99la8ni_DFcaWnm0d8dOwxhSVsU;

    invoke-direct {p3, p0}, Lcom/android/settings/wifi/-$$Lambda$ConfigureWifiEntryFragment$99la8ni_DFcaWnm0d8dOwxhSVsU;-><init>(Lcom/android/settings/wifi/ConfigureWifiEntryFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p2, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mCancelBtn:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/wifi/-$$Lambda$ConfigureWifiEntryFragment$b6nv0bNYgGE0ctJxMVXzZ4-xEcg;

    invoke-direct {p3, p0}, Lcom/android/settings/wifi/-$$Lambda$ConfigureWifiEntryFragment$b6nv0bNYgGE0ctJxMVXzZ4-xEcg;-><init>(Lcom/android/settings/wifi/ConfigureWifiEntryFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance p2, Lcom/android/settings/wifi/WifiConfigController2;

    iget-object p3, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->getMode()I

    move-result v1

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/android/settings/wifi/WifiConfigController2;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;I)V

    iput-object p2, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mUiController:Lcom/android/settings/wifi/WifiConfigController2;

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 124
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mUiController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
