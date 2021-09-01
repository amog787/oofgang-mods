.class public Lcom/android/settings/widget/DisabledCheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "DisabledCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private mEnabledCheckBox:Z

.field private mViewHolder:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 61
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_1

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-super {p0, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 76
    iget-boolean p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    return-void
.end method


# virtual methods
.method public enableCheckbox(Z)V
    .locals 1

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    .line 81
    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 90
    iput-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x1020001

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    const p0, 0x1020016

    .line 95
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p1, 0x2

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 99
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->performClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
