.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
.super Landroidx/preference/Preference;
.source "OPFingerPrintEditCategory.java"


# instance fields
.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mFingerprintNameView:Landroid/widget/TextView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    sget v0, Lcom/android/settings/R$layout;->op_fingerprint_edit_category:I

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget p2, Lcom/android/settings/R$layout;->op_fingerprint_edit_category:I

    iput p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget p2, Lcom/android/settings/R$layout;->op_fingerprint_edit_category:I

    iput p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 54
    iget p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 68
    sget v0, Lcom/android/settings/R$id;->op_fingerprint_name:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    .line 69
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 70
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public setFingerprintName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    .line 75
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
