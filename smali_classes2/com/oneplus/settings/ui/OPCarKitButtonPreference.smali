.class public Lcom/oneplus/settings/ui/OPCarKitButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPCarKitButtonPreference.java"


# instance fields
.field protected mButtonEnable:Z

.field protected mButtonString:Ljava/lang/String;

.field private mButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private mTextButtonColor:Landroid/content/res/ColorStateList;

.field private mTextSummaryString:Ljava/lang/String;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget p2, Lcom/android/settings/R$layout;->op_car_kit_button_preference:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->resid:I

    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget p2, Lcom/android/settings/R$layout;->op_car_kit_button_preference:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->resid:I

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mContext:Landroid/content/Context;

    .line 69
    iget p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->resid:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p1, ""

    .line 70
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonEnable:Z

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonVisible:Z

    .line 80
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 88
    sget v1, Lcom/android/settings/R$id;->left_ico:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    .line 89
    sget v1, Lcom/android/settings/R$id;->right_button:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    .line 90
    iget-boolean v2, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonVisible:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget v0, Lcom/android/settings/R$id;->lefttitle:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitle:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 99
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextSummary(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextSummaryString:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 141
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setLeftTextSummary(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 170
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    return-void
.end method
