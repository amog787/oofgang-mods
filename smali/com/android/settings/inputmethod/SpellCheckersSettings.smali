.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mSpellCheckerLanaguagePref:Landroidx/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method private changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "selected_spell_checker"

    .line 266
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "selected_spell_checker_subtype"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 146
    sget p1, Lcom/android/settings/R$string;->spell_checker_not_selected:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 149
    sget p1, Lcom/android/settings/R$string;->use_system_language_to_select_input_method_subtypes:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 151
    invoke-virtual {p2, p0, v0, p1}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private populatePreferenceScreen()V
    .locals 3

    .line 77
    new-instance v0, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V

    .line 79
    sget v1, Lcom/android/settings/R$string;->default_spell_checker:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    if-lez v1, :cond_1

    const-string v1, "%s"

    .line 82
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    :cond_1
    sget v1, Lcom/android/settings/R$string;->spell_checker_not_selected:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const-string v1, "default_spellchecker"

    .line 86
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private showChooseLanguageDialog()V
    .locals 10

    .line 188
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 199
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    sget v4, Lcom/android/settings/R$string;->phone_language:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 202
    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 203
    invoke-direct {p0, v0, v6}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    move v6, v2

    :goto_0
    if-ge v2, v4, :cond_3

    .line 206
    invoke-virtual {v0, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 207
    invoke-static {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v8

    .line 208
    invoke-direct {p0, v0, v7}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v8

    .line 209
    invoke-virtual {v7, v1}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_3
    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v3, v5, v6, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 238
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    .line 246
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 247
    sget v1, Lcom/android/settings/R$string;->spellchecker_security_warning:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 247
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x104000a

    .line 250
    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 256
    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 262
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updatePreferenceScreen()V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 118
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v4, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    .line 133
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 134
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 135
    instance-of v6, v5, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    if-eqz v6, :cond_1

    .line 136
    check-cast v5, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .line 137
    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v5, v6}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSelected(Landroid/view/textservice/SpellCheckerInfo;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3b

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget p1, Lcom/android/settings/R$xml;->spellchecker_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "spellchecker_language"

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroidx/preference/Preference;

    const-string p1, "textservices"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textservice/TextServicesManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 71
    invoke-virtual {p1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 72
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->populatePreferenceScreen()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 167
    check-cast p2, Landroid/view/textservice/SpellCheckerInfo;

    .line 169
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 171
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return v0

    .line 174
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V

    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 157
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spellchecker_language"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V

    const/4 p0, 0x1

    return p0

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 95
    sget v1, Lcom/android/settings/R$string;->spell_checker_master_switch_title:I

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "spell_checker_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method
