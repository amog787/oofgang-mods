.class public Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;
.super Landroidx/preference/Preference;
.source "OPEsportModeIntroductionCategory.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    sget v0, Lcom/android/settings/R$layout;->op_esport_mode_instruction_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget p2, Lcom/android/settings/R$layout;->op_esport_mode_instruction_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget p2, Lcom/android/settings/R$layout;->op_esport_mode_instruction_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    iget p1, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 63
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 65
    sget v0, Lcom/android/settings/R$id;->esportmode_introduction_imageview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

    .line 66
    sget v0, Lcom/android/settings/R$id;->esportmode_introduction_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$drawable;->op_esport_mode_introduction_dark:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$drawable;->op_esport_mode_introduction_light:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
