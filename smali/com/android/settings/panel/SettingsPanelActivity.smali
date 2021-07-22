.class public Lcom/android/settings/panel/SettingsPanelActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsPanelActivity.java"


# instance fields
.field final mBundle:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mForceCreation:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method private createOrUpdatePanel(Z)V
    .locals 4

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "panel_activity"

    const-string v0, "Null intent, closing Panel Activity"

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PANEL_TYPE_ARGUMENT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "PANEL_MEDIA_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 117
    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 120
    instance-of p1, v1, Lcom/android/settings/panel/PanelFragment;

    if-eqz p1, :cond_1

    .line 121
    check-cast v1, Lcom/android/settings/panel/PanelFragment;

    .line 122
    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {v1}, Lcom/android/settings/panel/PanelFragment;->updatePanelWithAnimation()V

    goto :goto_0

    .line 125
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->settings_panel:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x50

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 130
    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 132
    new-instance p1, Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p1}, Lcom/android/settings/panel/PanelFragment;-><init>()V

    .line 133
    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    const/4 p1, 0x1

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 80
    iget-boolean p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method
