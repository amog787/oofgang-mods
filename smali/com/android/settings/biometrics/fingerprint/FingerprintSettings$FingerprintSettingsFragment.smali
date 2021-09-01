.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
    }
.end annotation


# instance fields
.field private mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintsRenaming:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

.field private mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 206
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    .line 232
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 817
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method private addCustomAnimationPickPage(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 480
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "key_custom_animation"

    .line 481
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 482
    sget v1, Lcom/android/settings/R$string;->oneplus_fingerprint_animation_effect_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 483
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getCustomAnimationName()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 484
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 485
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V
    .locals 9

    .line 437
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 439
    new-instance v0, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 441
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 445
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 446
    new-instance v6, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;)V

    .line 448
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v6, v5}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 451
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BiometricId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->isRemovingFingerprint(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 459
    :cond_0
    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 460
    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 462
    :cond_1
    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 463
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 465
    :cond_2
    new-instance v0, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "key_fingerprint_add"

    .line 466
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 467
    sget v1, Lcom/android/settings/R$string;->fingerprint_add_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 468
    sget v1, Lcom/android/settings/R$drawable;->ic_menu_add:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 469
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 470
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 471
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 473
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addCustomAnimationPickPage(Landroidx/preference/PreferenceGroup;)V

    :cond_3
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 425
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 429
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->security_settings_fingerprint:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 430
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 431
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCustomAnimationName()I
    .locals 3

    .line 490
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_custom_unlock_animation_style"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    .line 508
    sget p0, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_1:I

    return p0

    .line 506
    :cond_0
    sget p0, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_red:I

    return p0

    .line 502
    :cond_1
    sget p0, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_none:I

    return p0

    .line 504
    :cond_2
    sget p0, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_6:I

    return p0

    .line 500
    :cond_3
    sget p0, Lcom/android/settings/R$string;->op_theme_3_title:I

    return p0

    .line 498
    :cond_4
    sget p0, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_3:I

    return p0

    .line 496
    :cond_5
    sget p0, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_4:I

    return p0

    .line 494
    :cond_6
    sget p0, Lcom/android/settings/R$string;->oneplus_select_fingerprint_animation_effect_1:I

    return p0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    sget v1, Lcom/android/settings/R$drawable;->preference_highlight:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 752
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private highlightFingerprintItem(I)V
    .locals 3

    .line 756
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 757
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 758
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 760
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 765
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 767
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 768
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 769
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 770
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    .line 385
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 13

    .line 781
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 782
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v11

    .line 783
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 784
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_title:I

    .line 785
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v9, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const/16 v3, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-wide v7, v11

    .line 784
    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    const-string v2, "minimum_quality"

    .line 788
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "hide_disabled_prefs"

    const/4 v2, 0x1

    .line 790
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_challenge"

    .line 792
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "challenge"

    .line 794
    invoke-virtual {v0, v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 795
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x66

    .line 796
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 811
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    return-void
.end method

.method private retryFingerprint()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 296
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-eqz p0, :cond_1

    :cond_1
    :goto_0
    return-void
.end method

.method private showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 10

    .line 672
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;-><init>()V

    .line 673
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 674
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "fingerprint"

    if-eqz v2, :cond_0

    .line 675
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 676
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    .line 677
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v8

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 678
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 682
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 683
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 684
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateAddPreference()V
    .locals 8

    .line 530
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 543
    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v4

    if-eqz v1, :cond_3

    .line 545
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->fingerprint_add_max:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    const-string v5, "key_fingerprint_add"

    .line 546
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 547
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 548
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 578
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 579
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method


# virtual methods
.method deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->startRemove(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 803
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 806
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 703
    sget p0, Lcom/android/settings/R$string;->help_url_fingerprint:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    goto :goto_0

    .line 272
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 274
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-eqz p1, :cond_3

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 288
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 291
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 708
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    if-ne p1, p3, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 723
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 724
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 711
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "hw_auth_token"

    .line 715
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 728
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez p1, :cond_4

    .line 730
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 320
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 327
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 329
    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v4, "authenticate_sidecar"

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    if-nez v2, :cond_0

    .line 337
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 339
    invoke-virtual {v2, v5, v4}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v4, "removal_sidecar"

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-nez v2, :cond_1

    .line 346
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    .line 348
    invoke-virtual {v2, v5, v4}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 354
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    if-eqz v2, :cond_2

    .line 356
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 359
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const-string v4, "mFingerprintsRenaming"

    .line 365
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 366
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v3, "launched_confirm"

    .line 368
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 371
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 372
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "android.intent.extra.USER_ID"

    .line 371
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 375
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez p1, :cond_4

    .line 376
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 377
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 380
    :cond_4
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object p1

    const/16 v3, 0x20

    .line 381
    iget v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 383
    new-instance v4, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance v5, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$YFiZ1sxA950v-GXlWJxWC0lIgQ0;

    invoke-direct {v5, v0, v3}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$YFiZ1sxA950v-GXlWJxWC0lIgQ0;-><init>(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const-string v6, "admin_details"

    invoke-direct {v4, v6, v5}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 387
    invoke-static {v0, v5, v6}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 389
    new-instance v6, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string/jumbo v7, "url"

    invoke-direct {v6, v0, v7, v5}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_disclaimer:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$string;->op_fingerprint_enroll_note_msg:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_5

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_disclaimer_lockscreen_disabled:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 399
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_disclaimer:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 401
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    aput-object v6, v7, v2

    aput-object v4, v7, v1

    invoke-static {p0, v7}, Lcom/android/settings/utils/AnnotationSpan;->linkifyRemoveFingerprintUrl(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string v0, ""

    .line 402
    :cond_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDeleteClick(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 5

    .line 646
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 647
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 648
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    if-eqz v2, :cond_2

    .line 651
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "FingerprintSettings"

    const-string p1, "Fingerprint delete in progress, skipping"

    .line 652
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 655
    :cond_1
    invoke-static {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->newInstance(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    move-result-object p1

    .line 656
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_2
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;-><init>()V

    .line 660
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    .line 661
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "fingerprint"

    .line 662
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "isProfileChallengeUser"

    .line 663
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 664
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 665
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 666
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    .line 667
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 666
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 736
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 737
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result p0

    if-gez p0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postEnroll failed: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 584
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 585
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 691
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fingerprint_enable_keyguard_toggle"

    .line 692
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 607
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_fingerprint_add"

    .line 608
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.android.settings"

    if-eqz v1, :cond_0

    .line 610
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 611
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    .line 612
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 615
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 616
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$anim;->op_activity_fingeprint_open_enter:I

    sget v2, Lcom/android/settings/R$anim;->op_activity_fingeprint_close_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const-string v1, "key_custom_animation"

    .line 617
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.Settings$OPCustomFingerprintAnimSettingsActivity"

    .line 619
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xb

    .line 620
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 621
    :cond_1
    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v0, :cond_2

    .line 622
    move-object v0, p1

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 623
    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 624
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 626
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 567
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 571
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 572
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-eqz v0, :cond_0

    .line 573
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 601
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    const-string v1, "launched_confirm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 602
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    const-string v0, "mFingerprintsRenaming"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected removeFingerprintPreference(I)V
    .locals 2

    .line 407
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "FingerprintSettings"

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove preference with key "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find preference to remove: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
