.class public Lcom/android/settings/SetupRedactionInterstitial;
.super Lcom/android/settings/notification/RedactionInterstitial;
.source "SetupRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SetupRedactionInterstitial;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 83
    sget p0, Lcom/android/settings/R$string;->lock_screen_notifications_interstitial_title_profile:I

    goto :goto_0

    .line 84
    :cond_0
    sget p0, Lcom/android/settings/R$string;->lock_screen_notifications_interstitial_title:I

    :goto_0
    const-string v1, ":settings:show_fragment_title_resid"

    .line 81
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.USER_ID"

    .line 85
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 3

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/SetupRedactionInterstitial;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 53
    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/notification/RedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 92
    const-class p0, Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    .line 92
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 99
    const-class p0, Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/SetupWizardUtils;->getGlifTheme(Landroid/content/Intent;)I

    move-result p2

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget p2, Lcom/android/settings/R$style;->OnePlusPasswordTheme:I

    .line 68
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
