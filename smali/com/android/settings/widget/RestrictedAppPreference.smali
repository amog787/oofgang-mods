.class public Lcom/android/settings/widget/RestrictedAppPreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "RestrictedAppPreference.java"


# instance fields
.field private mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private userRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/RestrictedAppPreference;->initialize(Landroid/util/AttributeSet;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 2

    .line 58
    sget v0, Lcom/android/settings/R$layout;->restricted_icon:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 59
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 60
    iput-object p2, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-object p0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 105
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 67
    sget v0, Lcom/android/settings/R$id;->restricted_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
