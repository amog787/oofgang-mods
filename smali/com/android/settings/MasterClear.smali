.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;


# static fields
.field static final CREDENTIAL_CONFIRM_REQUEST:I = 0x38

.field static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private isDemoModeEnabled:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field mEsimStorage:Landroid/widget/CheckBox;

.field mEsimStorageContainer:Landroid/view/View;

.field mExternalStorage:Landroid/widget/CheckBox;

.field mInitiateButton:Lcom/google/android/setupcompat/template/FooterButton;

.field protected final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

.field private mOptionalSwitchPreference:Landroidx/preference/SwitchPreference;

.field mScrollView:Landroid/widget/ScrollView;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 313
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 671
    new-instance v0, Lcom/android/settings/MasterClear$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;I)Z
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/settings/MasterClear;->isDemoModeEnabled:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->vzwDemoModePasswordDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/MasterClear;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    sget p0, Lcom/android/settings/R$string;->master_clear_short_title:I

    .line 193
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 192
    invoke-virtual {v1, p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 3

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "power_on_psw"

    .line 241
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/MasterClearConfirm;

    .line 245
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x42

    .line 246
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 247
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 248
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private vzwDemoModePasswordDialog()V
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 731
    sget v1, Lcom/android/settings/R$layout;->vzw_alert_dialog_password_entry:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 733
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->verizon_store_demo_mode_title:I

    .line 734
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 735
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/MasterClear$4;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;Landroid/view/View;)V

    const v0, 0x104000a

    .line 736
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/MasterClear$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    const/high16 p0, 0x1040000

    .line 749
    invoke-virtual {v1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 754
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 757
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method establishInitialState()V
    .locals 2

    const-string v0, "op_optional_reset"

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "op_factory_reset_confirm"

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    .line 364
    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->setOnFactoryResetConfirmListener(Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;)V

    return-void
.end method

.method getAccountConfirmationIntent()Landroid/content/Intent;
    .locals 6

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 273
    sget v0, Lcom/android/settings/R$string;->account_type:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    sget v1, Lcom/android/settings/R$string;->account_confirmation_package:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    sget v2, Lcom/android/settings/R$string;->account_confirmation_class:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "MasterClear"

    if-nez v3, :cond_3

    .line 277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 283
    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 284
    array-length v3, v3

    if-lez v3, :cond_2

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 291
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 293
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 298
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to resolve Activity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accounts installed!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_3
    :goto_1
    const-string p0, "Resources not set for account confirmation."

    .line 279
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x42

    return p0
.end method

.method hasReachedBottom(Landroid/widget/ScrollView;)Z
    .locals 3

    .line 483
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 487
    invoke-virtual {p1, p0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method protected isEuiccEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "euicc"

    .line 477
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 478
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method isValidRequestCode(I)Z
    .locals 0

    const/16 p0, 0x37

    if-eq p1, p0, :cond_1

    const/16 p0, 0x38

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/MasterClear;->onActivityResultInternal(IILandroid/content/Intent;)V

    return-void
.end method

.method onActivityResultInternal(IILandroid/content/Intent;)V
    .locals 1

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->isValidRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    return-void

    :cond_1
    const/16 p2, 0x38

    if-eq p2, p1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "power_on_psw"

    .line 231
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    sget p1, Lcom/android/settings/R$xml;->op_reset_all_data_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->master_clear_short_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "verizonwireless_store_demo_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MasterClear;->isDemoModeEnabled:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 765
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/android/settings/MasterClear;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 772
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onFactoryResetConfirmClick()V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->master_clear_confirm_summary:I

    .line 702
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x104072d

    iget-object v2, p0, Lcom/android/settings/MasterClear;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 703
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    iget-object v2, p0, Lcom/android/settings/MasterClear;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 704
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 707
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MasterClear;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x37

    .line 710
    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 711
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 712
    iget v0, p0, Lcom/android/settings/MasterClear;->isDemoModeEnabled:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 713
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->vzwDemoModePasswordDialog()V

    goto :goto_0

    .line 715
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->showFinalConfirmation(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->hasReachedBottom(Landroid/widget/ScrollView;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mOptionalSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 658
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 660
    iget-object p0, p0, Lcom/android/settings/MasterClear;->mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    sget p1, Lcom/android/settings/R$string;->oneplus_erase_system_data:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->setConfirmButtonText(I)V

    goto :goto_0

    .line 662
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MasterClear;->mOPFactoryResetConfirmCategory:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;

    sget p1, Lcom/android/settings/R$string;->master_clear_button_text:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->setConfirmButtonText(I)V

    :cond_1
    :goto_0
    return v1
.end method

.method showAccountCredentialConfirmation(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x38

    .line 267
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showFinalConfirmation()V
    .locals 3

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "erase_esim"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    .line 258
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 259
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    sget v0, Lcom/android/settings/R$string;->master_clear_confirm_title:I

    .line 260
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 262
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method showWipeEuicc()Z
    .locals 3

    .line 460
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 464
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "euicc_provisioned"

    .line 465
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 466
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method showWipeEuiccCheckbox()Z
    .locals 1

    const-string p0, "masterclear.allow_retain_esim_profiles_after_fdr"

    const/4 v0, 0x0

    .line 472
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
