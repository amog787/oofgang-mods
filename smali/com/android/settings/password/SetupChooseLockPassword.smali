.class public Lcom/android/settings/password/SetupChooseLockPassword;
.super Lcom/android/settings/password/ChooseLockPassword;
.source "SetupChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/android/settings/password/SetupChooseLockPassword;->hideSoftKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method private static hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 211
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 58
    const-class v0, Lcom/android/settings/password/SetupChooseLockPassword;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "extra_prefs_show_button_bar"

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 80
    const-class p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    return-object p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 75
    const-class p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/SetupWizardUtils;->getGlifTheme(Landroid/content/Intent;)I

    move-result p2

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget p2, Lcom/android/settings/R$style;->OnePlusSetupPasswordTheme:I

    .line 70
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget p1, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method
