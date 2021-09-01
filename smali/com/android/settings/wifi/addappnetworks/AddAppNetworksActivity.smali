.class public Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "AddAppNetworksActivity.java"


# instance fields
.field final mBundle:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Lcom/android/settings/R$layout;->settings_panel:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->showAddNetworksFragment()V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    const/4 p1, -0x1

    const/4 v0, -0x2

    .line 65
    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->showAddNetworksFragment()V

    return-void
.end method

.method showAddNetworksFragment()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "panel_calling_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.provider.extra.WIFI_NETWORK_LIST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AddAppNetworksActivity"

    .line 84
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-direct {v2}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;-><init>()V

    .line 87
    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 90
    :cond_0
    check-cast v2, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->createContent(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
