.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroidx/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 38
    sget p1, Lcom/android/settings/R$layout;->preference_progress_category:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 43
    sget p1, Lcom/android/settings/R$layout;->preference_progress_category:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 49
    sget p1, Lcom/android/settings/R$layout;->preference_progress_category:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 54
    sget p1, Lcom/android/settings/R$layout;->preference_progress_category:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 64
    sget v0, Lcom/android/settings/R$id;->scanning_progress:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroidx/preference/Preference;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 68
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez p1, :cond_5

    if-nez v0, :cond_3

    goto :goto_3

    .line 76
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez p1, :cond_6

    .line 77
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_4

    .line 78
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroidx/preference/Preference;

    .line 79
    sget v0, Lcom/android/settings/R$layout;->preference_empty_list:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroidx/preference/Preference;

    iget v0, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_4

    .line 71
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz p1, :cond_6

    .line 72
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 73
    iput-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    :cond_6
    :goto_4
    return-void
.end method

.method public setEmptyTextRes(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
