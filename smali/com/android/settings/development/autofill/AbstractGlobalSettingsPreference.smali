.class abstract Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "AbstractGlobalSettingsPreference.java"


# instance fields
.field private final mDefaultValue:I

.field private final mKey:Ljava/lang/String;

.field private final mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p3, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    .line 47
    new-instance p2, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    new-instance p3, Lcom/android/settings/development/autofill/-$$Lambda$AbstractGlobalSettingsPreference$yo1YEvLA_ptNRuKnWeVnx0U-mUQ;

    invoke-direct {p3, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AbstractGlobalSettingsPreference$yo1YEvLA_ptNRuKnWeVnx0U-mUQ;-><init>(Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;)V

    invoke-direct {p2, p1, p3}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    return-void
.end method

.method private getCurrentValue()Ljava/lang/String;
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$AbstractGlobalSettingsPreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->lambda$new$0()V

    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->register()V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->updateSummary()V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p1}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->unregister()V

    .line 62
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    .line 93
    iget v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to integer. Using "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AbstractGlobalSettingsPreference"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
