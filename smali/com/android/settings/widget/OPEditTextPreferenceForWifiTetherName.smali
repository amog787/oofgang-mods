.class public Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "OPEditTextPreferenceForWifiTetherName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;,
        Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;
    }
.end annotation


# instance fields
.field private dialogEditText:Landroid/widget/EditText;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mIsPassword:Z

.field private mIsSummaryPassword:Z

.field private final mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

.field private mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

.field private nameTemp:Ljava/lang/String;

.field private noShowCheckBox:Landroid/widget/CheckBox;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    .line 68
    iput-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    .line 68
    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    .line 170
    new-instance p2, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance p2, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    .line 68
    iput-object p3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    .line 170
    new-instance p2, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    new-instance p2, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    .line 68
    iput-object p3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    .line 170
    new-instance p2, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/widget/CheckBox;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->noShowCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->noShowCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/widget/EditText;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->dialogEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    return-object p0
.end method


# virtual methods
.method public isPassword()Z
    .locals 0

    .line 228
    iget-boolean p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsPassword:Z

    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    .line 103
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 106
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->dialogEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsPassword:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x91

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    invoke-virtual {p1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    sget v2, Lcom/android/settings/R$layout;->op_wifi_broadcast_checkbox:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v2, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    .line 128
    iget-object v2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v5, "oneplus_is_broadcat_wifi_name"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    sget v2, Lcom/android/settings/R$string;->oneplus_broadcat_wifi_name:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 205
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsSummaryPassword:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x81

    .line 210
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    const p0, 0x80001

    .line 213
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 181
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "OPValidatedEditTextPreference"

    const-string v0, "onClick  hide soft first"

    .line 185
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 187
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 196
    iget-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    const/4 p2, -0x2

    const-string v0, "oneplus_is_broadcat_wifi_name"

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    return-void
.end method

.method public setValidator(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    return-void
.end method
