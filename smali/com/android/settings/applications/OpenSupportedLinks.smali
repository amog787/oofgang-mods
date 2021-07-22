.class public Lcom/android/settings/applications/OpenSupportedLinks;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "OpenSupportedLinks.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# instance fields
.field mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

.field mAskEveryTime:Lcom/android/settings/widget/RadioButtonPreference;

.field private mCurrentIndex:I

.field mNotAllowed:Lcom/android/settings/widget/RadioButtonPreference;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mRadioKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const-string v0, "app_link_open_always"

    const-string v1, "app_link_open_ask"

    const-string v2, "app_link_open_never"

    .line 56
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mRadioKeys:[Ljava/lang/String;

    return-void
.end method

.method private indexToLinkState(I)I
    .locals 0

    const/4 p0, 0x2

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    :cond_1
    return p0
.end method

.method private linkStateToIndex(I)I
    .locals 1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 114
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 115
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 118
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private preferenceKeyToIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mRadioKeys:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 158
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private setRadioStatus(I)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAskEveryTime:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mNotAllowed:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateAppLinkState(I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    goto :goto_0

    :cond_1
    const-string p0, "OpenSupportedLinks"

    const-string p1, "Couldn\'t update intent verification status!"

    .line 180
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateFooterPreference()V
    .locals 1

    const-string v0, "supported_links_footer"

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    const-string p0, "OpenSupportedLinks"

    const-string v0, "Can\'t find the footer preference."

    .line 190
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->addLinksToFooter(Lcom/android/settingslib/widget/FooterPreference;)V

    return-void
.end method


# virtual methods
.method addLinksToFooter(Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "OpenSupportedLinks"

    const-string p1, "Can\'t find any app links."

    .line 200
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getEntriesNo()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x720

    return p0
.end method

.method initRadioPreferencesGroup()V
    .locals 7

    const-string v0, "supported_links_radio_group"

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 89
    sget v0, Lcom/android/settings/R$string;->app_link_open_always:I

    const-string v1, "app_link_open_always"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/applications/OpenSupportedLinks;->getEntriesNo()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAllowOpening:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->app_link_open_always_summary:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 93
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    sget v0, Lcom/android/settings/R$string;->app_link_open_ask:I

    const-string v1, "app_link_open_ask"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mAskEveryTime:Lcom/android/settings/widget/RadioButtonPreference;

    .line 96
    sget v0, Lcom/android/settings/R$string;->app_link_open_never:I

    const-string v1, "app_link_open_never"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mNotAllowed:Lcom/android/settings/widget/RadioButtonPreference;

    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 99
    invoke-direct {p0, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->linkStateToIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    .line 100
    invoke-direct {p0, v0}, Lcom/android/settings/applications/OpenSupportedLinks;->setRadioStatus(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 73
    sget p1, Lcom/android/settings/R$xml;->open_supported_links:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/OpenSupportedLinks;->initRadioPreferencesGroup()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/applications/OpenSupportedLinks;->updateFooterPreference()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/OpenSupportedLinks;->preferenceKeyToIndex(Ljava/lang/String;)I

    move-result p1

    .line 106
    iget v0, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    if-eq v0, p1, :cond_0

    .line 107
    iput p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/applications/OpenSupportedLinks;->setRadioStatus(I)V

    .line 109
    iget p1, p0, Lcom/android/settings/applications/OpenSupportedLinks;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/applications/OpenSupportedLinks;->indexToLinkState(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/OpenSupportedLinks;->updateAppLinkState(I)V

    :cond_0
    return-void
.end method

.method protected refreshUi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
