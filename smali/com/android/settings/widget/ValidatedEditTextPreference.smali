.class public Lcom/android/settings/widget/ValidatedEditTextPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "ValidatedEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;,
        Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
    }
.end annotation


# instance fields
.field private dialogEditText:Landroid/widget/EditText;

.field private mIsPassword:Z

.field private mIsSummaryPassword:Z

.field private final mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

.field private mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p1, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->dialogEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    return-object p0
.end method


# virtual methods
.method public isPassword()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 74
    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->dialogEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x91

    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 86
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x81

    .line 99
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    const p0, 0x80001

    .line 102
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    return-void
.end method

.method public setIsPassword(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    return-void
.end method

.method public setIsSummaryPassword(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    return-void
.end method

.method public setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    return-void
.end method
