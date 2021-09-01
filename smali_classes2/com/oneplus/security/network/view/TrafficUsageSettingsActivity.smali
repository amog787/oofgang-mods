.class public Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "TrafficUsageSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private setupSimplePreferencesScreen()V
    .locals 3

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const-string v2, "sim_card_slot"

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    new-instance v0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-direct {v0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;-><init>()V

    .line 117
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v1, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget p1, Lcom/android/settings/R$layout;->traffic_usage_settings_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 88
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/Appbar;

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/Appbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/Appbar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    new-instance v0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$1;-><init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/Appbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;->setupSimplePreferencesScreen()V

    return-void
.end method
