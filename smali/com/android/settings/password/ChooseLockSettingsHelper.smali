.class public final Lcom/android/settings/password/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 95
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 100
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 494
    invoke-static {p1, p2}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string p0, "theme"

    .line 495
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    const-string p0, "android.intent.extra.INTENT"

    .line 475
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string p0, "android.intent.extra.TASK_ID"

    const/4 v1, -0x1

    .line 479
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 481
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-nez v0, :cond_2

    if-eq p1, v1, :cond_3

    :cond_2
    const/high16 p0, 0x800000

    .line 488
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x40000000    # 2.0f

    .line 489
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;ZZZJI",
            "Ljava/lang/CharSequence;",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p7

    move-object/from16 v3, p13

    .line 434
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings.ConfirmCredentials.title"

    move-object v6, p2

    .line 435
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v5, "com.android.settings.ConfirmCredentials.header"

    move-object v6, p3

    .line 436
    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v5, "com.android.settings.ConfirmCredentials.details"

    move-object v6, p4

    .line 437
    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v5, "com.android.settings.ConfirmCredentials.darkTheme"

    const/4 v6, 0x0

    .line 439
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 440
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 441
    invoke-virtual {v4, v5, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    .line 442
    invoke-virtual {v4, v5, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "return_credentials"

    move v6, p6

    .line 443
    invoke-virtual {v4, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "has_challenge"

    move/from16 v6, p8

    .line 444
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "challenge"

    move-wide/from16 v6, p9

    .line 445
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "android.intent.extra.USER_ID"

    move/from16 v6, p11

    .line 446
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    move-object/from16 v6, p12

    .line 447
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v5, "foreground_only"

    move/from16 v6, p14

    .line 448
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 452
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_2

    const/high16 v1, 0x2000000

    .line 454
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 457
    iget-object v0, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 460
    iget-object v0, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_3

    .line 464
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 465
    iget-object v0, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v4, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 468
    iget-object v0, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILandroid/os/Bundle;)Z
    .locals 14

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v12, p11

    .line 363
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;Z)Z
    .locals 15

    move-object v0, p0

    .line 400
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    move/from16 v11, p10

    invoke-virtual {v1, v11}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    .line 403
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_0
    if-nez p5, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 421
    :cond_1
    const-class v1, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_1

    .line 420
    :cond_2
    :goto_0
    const-class v1, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    :goto_1
    move-object v5, v1

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    .line 418
    invoke-direct/range {v0 .. v14}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;Z)Z

    move-result v0

    goto :goto_4

    :cond_3
    if-nez p5, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    .line 408
    :cond_4
    const-class v1, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_3

    .line 407
    :cond_5
    :goto_2
    const-class v1, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    :goto_3
    move-object v5, v1

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    .line 405
    invoke-direct/range {v0 .. v14}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;Z)Z

    move-result v0

    :goto_4
    return v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJIZ)Z
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v13, p11

    .line 344
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 115
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZ)Z

    move-result p0

    return p0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JIZ)Z
    .locals 12

    move-object v0, p0

    .line 274
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v10, p7

    .line 283
    invoke-static {v1, v10}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v8, p5

    move/from16 v11, p8

    .line 274
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJIZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZ)Z
    .locals 12

    move-object v0, p0

    .line 246
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 255
    invoke-static {v1}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v8, p5

    move/from16 v11, p7

    .line 246
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJIZ)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z
    .locals 12

    move-object v0, p0

    .line 219
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v10, p7

    .line 228
    invoke-static {v1, v10}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 219
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJIZ)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZ)Z
    .locals 12

    move-object v0, p0

    .line 188
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 197
    invoke-static {v1}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v11, p7

    .line 188
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJIZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    .line 135
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZ)Z

    move-result p0

    return p0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z
    .locals 12

    move-object v0, p0

    .line 157
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v10, p4

    .line 166
    invoke-static {v1, v10}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    move v1, p1

    move-object v2, p2

    move v5, p3

    .line 157
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJIZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityForAnyUser(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Z
    .locals 12

    .line 325
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v0, "allow_any_user"

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    .line 327
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z
    .locals 12

    move-object v0, p0

    .line 304
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v10, p8

    .line 313
    invoke-static {v1, v10}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-wide/from16 v8, p6

    .line 304
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJIZ)Z

    move-result v0

    return v0
.end method

.method public launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 14

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, -0x270f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v11, p4

    .line 380
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method
