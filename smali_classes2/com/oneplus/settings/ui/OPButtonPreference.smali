.class public Lcom/oneplus/settings/ui/OPButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPButtonPreference.java"


# instance fields
.field private mButtonEnable:Z

.field private mButtonString:Ljava/lang/String;

.field private mButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/TextView;

.field private mTextButtonColor:Landroid/content/res/ColorStateList;

.field private mTextSummary:Landroid/widget/TextView;

.field private mTextSummaryString:Ljava/lang/String;

.field private mTextSummaryVisible:Z

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget p2, Lcom/android/settings/R$layout;->op_button_preference:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    .line 60
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget p2, Lcom/android/settings/R$layout;->op_button_preference:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    .line 55
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mContext:Landroid/content/Context;

    .line 70
    iget p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p1, ""

    .line 71
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    .line 81
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 87
    sget v0, Lcom/android/settings/R$id;->left_ico:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcom/android/settings/R$id;->right_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    .line 89
    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v0, Lcom/android/settings/R$id;->lefttitle:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitle:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v0, Lcom/android/settings/R$id;->leftsummary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    .line 98
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 101
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextSummary(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLeftTextSummary(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    return-void
.end method
