.class public Lcom/android/settings/accessibility/MagnificationSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MagnificationSettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mCapabilities:I

.field private mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

.field private mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

.field private mModePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 232
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_magnification_service_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    return-void
.end method

.method private callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCapabilities(Z)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mModePreference:Landroidx/preference/Preference;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->getMagnificationCapabilitiesSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private disableEnabledMagnificationModePreference()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enableAllPreference()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method private static getMagnificationCapabilities(Landroid/content/Context;)I
    .locals 2

    const-string v0, "master_mono"

    const/4 v1, 0x1

    .line 70
    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static getMagnificationCapabilitiesSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->magnification_mode_summaries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->magnification_mode_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 62
    invoke-static {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->getMagnificationCapabilities(Landroid/content/Context;)I

    move-result p0

    .line 65
    invoke-static {v1, p0}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    .line 66
    :cond_0
    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result p0

    .line 74
    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private initializeDialogCheckBox(Landroidx/appcompat/app/AlertDialog;)V
    .locals 2

    .line 153
    sget v0, Lcom/android/settings/R$id;->magnify_full_screen:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    .line 156
    sget v0, Lcom/android/settings/R$id;->magnify_window_screen:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 157
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    .line 159
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateAlertDialogCheckState()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateAlertDialogEnableState()V

    return-void
.end method

.method public static synthetic lambda$4k2Vn9yf8NU68ZSOysqll2ad6Fg(Lcom/android/settings/accessibility/MagnificationSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->getMagnificationCapabilities(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    const/4 p1, 0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return p1
.end method

.method private synthetic lambda$updateCheckStatus$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCapabilities(Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateAlertDialogEnableState()V

    return-void
.end method

.method private setMagnificationCapabilities(I)V
    .locals 1

    const-string v0, "master_mono"

    .line 215
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setSecureIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method private setSecureIntValue(Ljava/lang/String;I)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result p0

    .line 210
    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateAlertDialogCheckState()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCheckStatus(Landroid/widget/CheckBox;I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->updateCheckStatus(Landroid/widget/CheckBox;I)V

    return-void
.end method

.method private updateAlertDialogEnableState()V
    .locals 2

    .line 178
    iget v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->disableEnabledMagnificationModePreference()V

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->enableAllPreference()V

    :goto_0
    return-void
.end method

.method private updateCapabilities(Z)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyFullScreenCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 202
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mMagnifyWindowCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 203
    iput v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    if-eqz p1, :cond_1

    .line 205
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->setMagnificationCapabilities(I)V

    :cond_1
    return-void
.end method

.method private updateCheckStatus(Landroid/widget/CheckBox;I)V
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    new-instance p2, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$RNHtVYEOF_LVDzImVCPdPs3hpJM;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$RNHtVYEOF_LVDzImVCPdPs3hpJM;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x718

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MagnificationSettingsFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x717

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 129
    sget p0, Lcom/android/settings/R$xml;->accessibility_magnification_service_settings:I

    return p0
.end method

.method public synthetic lambda$onCreate$0$MagnificationSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->lambda$onCreate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateCheckStatus$1$MagnificationSettingsFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->lambda$updateCheckStatus$1(Landroid/view/View;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "capability"

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    .line 96
    :cond_0
    iget p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->getMagnificationCapabilities(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "magnification_mode"

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mModePreference:Landroidx/preference/Preference;

    .line 120
    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$f6gdrAzhkt25X_6Jca6AFx7B-EI;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$f6gdrAzhkt25X_6Jca6AFx7B-EI;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->accessibility_magnification_mode_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$4k2Vn9yf8NU68ZSOysqll2ad6Fg;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$MagnificationSettingsFragment$4k2Vn9yf8NU68ZSOysqll2ad6Fg;-><init>(Lcom/android/settings/accessibility/MagnificationSettingsFragment;)V

    invoke-static {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityEditDialogUtils;->showMagnificationModeDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->initializeDialogCheckBox(Landroidx/appcompat/app/AlertDialog;)V

    return-object p1

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    iget v0, p0, Lcom/android/settings/accessibility/MagnificationSettingsFragment;->mCapabilities:I

    const-string v1, "capability"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
