.class public Lcom/android/settingslib/OPRestrictedPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "OPRestrictedPreference.java"


# instance fields
.field private mDivider:Landroid/view/View;

.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private mHideDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    sget v0, Lcom/android/settings/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/OPRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/OPRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 39
    iput-boolean p3, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHideDivider:Z

    .line 44
    sget p4, Lcom/android/settings/R$layout;->op_preference_two_target_layout_center:I

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 45
    new-instance p4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {p4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 46
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 67
    sget p0, Lcom/android/settings/R$layout;->restricted_icon:I

    return p0
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 105
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 79
    sget v0, Lcom/android/settings/R$id;->restricted_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/settingslib/OPRestrictedPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_1
    sget v0, Lcom/android/settings/R$id;->view_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/OPRestrictedPreference;->mDivider:Landroid/view/View;

    .line 84
    iget-boolean v0, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHideDivider:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 p0, 0x4

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 87
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/OPRestrictedPreference;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settingslib/OPRestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/settingslib/OPRestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/OPRestrictedPreference;->isDisabledByAdmin()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
