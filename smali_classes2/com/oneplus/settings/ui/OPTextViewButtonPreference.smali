.class public Lcom/oneplus/settings/ui/OPTextViewButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPTextViewButtonPreference.java"


# instance fields
.field protected mButtonEnable:Z

.field protected mButtonString:Ljava/lang/String;

.field private mButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnRightIconClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/TextView;

.field private mRightIcon:Landroid/widget/ImageView;

.field private mRightIconVisible:Z

.field private mSummary:Landroid/widget/TextView;

.field private mSummaryString:Ljava/lang/String;

.field private mSummaryVisible:Z

.field private mTextButtonColor:Landroid/content/res/ColorStateList;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 21
    sget v0, Lcom/android/settings/R$layout;->op_textview_button_prefrence:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget p2, Lcom/android/settings/R$layout;->op_textview_button_prefrence:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget p2, Lcom/android/settings/R$layout;->op_textview_button_prefrence:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mContext:Landroid/content/Context;

    .line 58
    iget p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p1, ""

    .line 59
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryVisible:Z

    .line 70
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 76
    sget v0, Lcom/android/settings/R$id;->left_ico:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/android/settings/R$id;->right_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    .line 78
    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget v0, Lcom/android/settings/R$id;->lefttitle:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitle:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummary:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryVisible:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    sget v0, Lcom/android/settings/R$id;->right_ico:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIcon:Landroid/widget/ImageView;

    .line 89
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIconVisible:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnRightIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 92
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    .line 115
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    .line 120
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnRightIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnRightIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightIconVisible(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIconVisible:Z

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummaryVisible(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryVisible:Z

    .line 125
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 168
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    return-void
.end method
