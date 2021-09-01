.class public Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mHideAllButton:Lcom/android/settings/RestrictedRadioButton;

.field private mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

.field private mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

.field private mUserId:I

.field private mViewHideAll:Landroid/view/View;

.field private mViewRedactSensitive:Landroid/view/View;

.field private mViewShowAll:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 204
    invoke-static {v0, p2, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 206
    invoke-virtual {p1, p0}, Lcom/android/settings/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public static synthetic lambda$8pyteZIVW5XOCBth5aVPDVC6DzI(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onDoneButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onCheckedChanged(I)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onCheckedChanged(I)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onCheckedChanged(I)V

    return-void
.end method

.method private loadFromSettings()V
    .locals 6

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v4, "lock_screen_show_notifications"

    .line 213
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 216
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v5, "lock_screen_allow_private_notifications"

    .line 215
    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    const/4 v3, 0x3

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    move v2, v3

    .line 228
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->updateRadioButton(I)V

    return-void
.end method

.method private onCheckedChanged(I)V
    .locals 5

    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->updateRadioButton(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    move v0, v1

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged show:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  enabled:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RedactionInterstitial"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 262
    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v3, "lock_screen_allow_private_notifications"

    .line 261
    invoke-static {p1, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 264
    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v4, "lock_screen_show_notifications"

    .line 263
    invoke-static {p1, v4, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v1, 0x3e7

    invoke-static {p1, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private onDoneButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/RedactionInterstitial;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method private updateRadioButton(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 275
    iget-object p1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 276
    iget-object p1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 277
    iget-object p0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 279
    iget-object p1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 280
    iget-object p1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 281
    iget-object p0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 283
    iget-object p1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 284
    iget-object p1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 285
    iget-object p0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4a

    return p0
.end method

.method public synthetic lambda$onViewCreated$0$RedactionInterstitial$RedactionInterstitialFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$RedactionInterstitial$RedactionInterstitialFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$RedactionInterstitial$RedactionInterstitialFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 234
    sget p1, Lcom/android/settings/R$id;->show_all:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 235
    :goto_0
    sget v2, Lcom/android/settings/R$id;->hide_all:I

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 237
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged show:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  enabled:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RedactionInterstitial"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 240
    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v2, "lock_screen_allow_private_notifications"

    .line 239
    invoke-static {p2, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 242
    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v3, "lock_screen_show_notifications"

    .line 241
    invoke-static {p2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/16 v1, 0x3e7

    invoke-static {p2, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 128
    sget p0, Lcom/android/settings/R$layout;->redaction_interstitial:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    sget p2, Lcom/android/settings/R$id;->show_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    .line 136
    sget p2, Lcom/android/settings/R$id;->redact_sensitive:I

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    .line 140
    sget p2, Lcom/android/settings/R$id;->hide_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Lcom/android/settings/RestrictedRadioButton;

    .line 142
    sget p2, Lcom/android/settings/R$id;->redaction_interstitial_show_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mViewShowAll:Landroid/view/View;

    .line 143
    sget p2, Lcom/android/settings/R$id;->redaction_interstitial_redact_sensitive:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mViewRedactSensitive:Landroid/view/View;

    .line 144
    sget p2, Lcom/android/settings/R$id;->redaction_interstitial_hide_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mViewHideAll:Landroid/view/View;

    .line 146
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mViewShowAll:Landroid/view/View;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$QobFpHeJyFqb-W6REC3cKnbstC0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$QobFpHeJyFqb-W6REC3cKnbstC0;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mViewRedactSensitive:Landroid/view/View;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$F5IIl_CbfayK0_5qKU64MwGXxYo;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$F5IIl_CbfayK0_5qKU64MwGXxYo;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mViewHideAll:Landroid/view/View;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$IWVrGQZcZWJbU3XViTmTXXF2eGk;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$IWVrGQZcZWJbU3XViTmTXXF2eGk;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    invoke-static {p2, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    sget p2, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_interstitial_message_profile:I

    .line 157
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show_profile:I

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 159
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_hide_profile:I

    .line 160
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 164
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mViewHideAll:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    sget p2, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 169
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 170
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->app_notifications_dialog_done:I

    .line 172
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$8pyteZIVW5XOCBth5aVPDVC6DzI;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$8pyteZIVW5XOCBth5aVPDVC6DzI;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    .line 173
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 p0, 0x5

    .line 174
    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget p0, Lcom/android/settings/R$style;->OnePlusPrimaryButtonStyle:I

    .line 175
    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 176
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
