.class public Lcom/android/settings/wifi/ConfigureAccessPointFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConfigureAccessPointFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mCancelBtn:Landroid/widget/Button;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mUiController:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->handleSubmitAction()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->handleCancelAction()V

    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->handleSubmitAction()V

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

    .line 149
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mSubmitBtn:Landroid/widget/Button;

    return-object p0
.end method

.method handleCancelAction()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method handleSubmitAction()V
    .locals 3

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 167
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mUiController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const-string v2, "network_config_key"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, -0x1

    .line 168
    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 169
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$ConfigureAccessPointFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$ConfigureAccessPointFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 71
    sget p3, Lcom/android/settings/R$layout;->wifi_add_network_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102001b

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 76
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p2, 0x1020019

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mSubmitBtn:Landroid/widget/Button;

    const p2, 0x102001a

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mCancelBtn:Landroid/widget/Button;

    .line 81
    iget-object p2, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mSubmitBtn:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/wifi/-$$Lambda$ConfigureAccessPointFragment$tVebcdGMZwnNzpTtH8NPbSC5ozM;

    invoke-direct {p3, p0}, Lcom/android/settings/wifi/-$$Lambda$ConfigureAccessPointFragment$tVebcdGMZwnNzpTtH8NPbSC5ozM;-><init>(Lcom/android/settings/wifi/ConfigureAccessPointFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p2, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mCancelBtn:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/wifi/-$$Lambda$ConfigureAccessPointFragment$ngdmwq8gfJ5i8l795Er7dD3IbVI;

    invoke-direct {p3, p0}, Lcom/android/settings/wifi/-$$Lambda$ConfigureAccessPointFragment$ngdmwq8gfJ5i8l795Er7dD3IbVI;-><init>(Lcom/android/settings/wifi/ConfigureAccessPointFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance p2, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v4, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->getMode()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;IZ)V

    iput-object p2, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mUiController:Lcom/android/settings/wifi/WifiConfigController;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    return-object p1
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mUiController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureAccessPointFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
