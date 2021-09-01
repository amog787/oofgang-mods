.class public Lcom/android/settings/MasterClearConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field mContentView:Landroid/view/View;

.field mEraseEsims:Z

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mPowerOnPsw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method private doMasterClear()V
    .locals 6

    .line 234
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->storeLastFactoryResetTime()V

    .line 248
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 249
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "--wipe_data"

    const-string v5, "MasterClearConfirm"

    if-nez v0, :cond_2

    .line 253
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->checkIfNeedPasswordToPowerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v3, v5, v4, p0}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    throw v2

    .line 257
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v3, v5, v4, v1}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    throw v2

    .line 250
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v3, v5, v4, p0}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    throw v2

    .line 262
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v4, "--delete_data"

    const-string v5, "OPMasterClearConfirm"

    if-nez v0, :cond_5

    .line 266
    :try_start_6
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->checkIfNeedPasswordToPowerOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v3, v5, v4, p0}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    throw v2

    .line 270
    :cond_4
    :try_start_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v3, v5, v4, v1}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    throw v2

    .line 263
    :cond_5
    :try_start_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    invoke-static {v0, v3, v5, v4, p0}, Lcom/oneplus/settings/OPRebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    throw v2

    :catch_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "MasterClearConfim"

    const-string v0, "bootCommand Reboot failed (no permissions?)"

    .line 277
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v0, :cond_1

    .line 296
    iget-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$string;->master_clear_confirm_title:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$string;->oneplus_erase_system_data_title:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 299
    :cond_1
    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz v0, :cond_3

    .line 302
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/android/settings/R$string;->master_clear_button_text:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/android/settings/R$string;->oneplus_erase_system_data:I

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 308
    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 p0, 0x0

    .line 309
    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget p0, Lcom/android/settings/R$style;->OnePlusPrimaryButtonStyle:I

    .line 310
    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 311
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 302
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 4

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 376
    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    if-nez v2, :cond_1

    .line 377
    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settings/R$string;->master_clear_final_desc:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$string;->oneplus_erase_system_data_summary:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 380
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 380
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setUpActionBarAndTitle()V
    .locals 2

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "MasterClearConfirm"

    if-nez p0, :cond_0

    const-string p0, "No activity attached, skipping setUpActionBarAndTitle"

    .line 320
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "No actionbar, skipping setUpActionBarAndTitle"

    .line 325
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_1
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 329
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private storeLastFactoryResetTime()V
    .locals 5

    .line 158
    new-instance p0, Ljava/io/File;

    const-string v0, "/mnt/vendor/op2/last_factory_reset"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "Exception"

    const-string v2, "MasterClearConfirm"

    if-nez v0, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 170
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 171
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 174
    invoke-static {v2, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 2

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "require_password_to_decrypt"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x43

    return p0
.end method

.method isDeviceStillBeingProvisioned()Z
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isOemUnlockedAllowed()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "oem_lock"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/oemlock/OemLockManager;

    .line 214
    invoke-virtual {p0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCreateView$0$MasterClearConfirm(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClearConfirm;->lambda$onCreateView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 396
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "erase_sd"

    .line 402
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz p1, :cond_1

    const-string v2, "erase_esim"

    .line 404
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    if-eqz p1, :cond_2

    const-string v0, "power_on_psw"

    .line 407
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm;->mPowerOnPsw:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_factory_reset"

    .line 335
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 337
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 339
    sget p0, Lcom/android/settings/R$layout;->master_clear_disallowed_screen:I

    invoke-virtual {p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 341
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 342
    invoke-virtual {p1, v0, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    .line 343
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 345
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 347
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->master_clear_confirm:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 354
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->setUpActionBarAndTitle()V

    .line 355
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 356
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->setAccessibilityTitle()V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->setSubtitle()V

    .line 358
    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 364
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p2, Lcom/android/settings/R$attr;->onePlusActionbarBackgroundColor:I

    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method setSubtitle()V
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->master_clear_final_desc_esim:I

    .line 390
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method shouldWipePersistentDataBlock(Landroid/service/persistentdata/PersistentDataBlockManager;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->isDeviceStillBeingProvisioned()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->isOemUnlockedAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 193
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "device_policy"

    .line 194
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 197
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isFactoryResetProtectionPolicySupported()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    .line 203
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 205
    invoke-virtual {p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
