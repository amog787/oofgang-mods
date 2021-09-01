.class public abstract Lcom/android/settings/widget/RadioButtonPickerFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "RadioButtonPickerFragment.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# static fields
.field static final EXTRA_FOR_WORK:Ljava/lang/String; = "for_work"


# instance fields
.field mAppendStaticPreferences:Z

.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIllustrationId:I

.field private mIllustrationPreviewId:I

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    return-void
.end method

.method private addIllustration(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 260
    new-instance v0, Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 261
    iget v1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    iget v2, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationPreviewId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    .line 262
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    return-void
.end method

.method public bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 1

    .line 209
    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setSafeIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 212
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 213
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 215
    :cond_0
    iget-boolean p2, p3, Lcom/android/settingslib/widget/CandidateInfo;->enabled:Z

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 216
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    return-object p1
.end method

.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected getCandidate(Ljava/lang/String;)Lcom/android/settingslib/widget/CandidateInfo;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/widget/CandidateInfo;

    return-object p0
.end method

.method protected abstract getCandidates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getDefaultKey()Ljava/lang/String;
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method protected getRadioButtonPreferenceCustomLayoutResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSystemDefaultKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public mayCheckOnlyRadioButton()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    .line 242
    instance-of v0, p0, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 243
    check-cast p0, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "for_work"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_1

    .line 80
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const-string v0, "RadioButtonPckrFrgmt"

    .line 85
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreenResId()I

    move-result p2

    const/16 v1, 0x401

    .line 88
    invoke-static {p1, p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 92
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "staticPreferenceLocation"

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error parsing xml"

    .line 97
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Error trying to open xml file"

    .line 95
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 106
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method protected onRadioButtonConfirmed(Ljava/lang/String;)V
    .locals 1

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setDefaultKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCheckedState(Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 0

    return-void
.end method

.method protected abstract setDefaultKey(Ljava/lang/String;)Z
.end method

.method protected shouldShowItemNone()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateCandidates()V
    .locals 12

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getCandidates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/CandidateInfo;

    .line 163
    iget-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getSystemDefaultKey()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 170
    new-instance v4, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 171
    iget v4, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mIllustrationId:I

    if-eqz v4, :cond_1

    .line 172
    invoke-direct {p0, v3}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addIllustration(Landroidx/preference/PreferenceScreen;)V

    .line 174
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z

    if-nez v4, :cond_2

    .line 175
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addStaticPreferences(Landroidx/preference/PreferenceScreen;)V

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getRadioButtonPreferenceCustomLayoutResId()I

    move-result v4

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->shouldShowItemNone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    new-instance v5, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    if-lez v4, :cond_3

    .line 182
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 184
    :cond_3
    sget v6, Lcom/android/settings/R$drawable;->ic_remove_circle:I

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(I)V

    .line 185
    sget v6, Lcom/android/settings/R$string;->app_list_preference_none:I

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(I)V

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    invoke-virtual {v5, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 188
    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    if-eqz v0, :cond_6

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/settingslib/widget/CandidateInfo;

    .line 192
    new-instance v11, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v11, v5}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    if-lez v4, :cond_5

    .line 194
    invoke-virtual {v11, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 196
    :cond_5
    invoke-virtual {v8}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v11, v5, v8, v1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 197
    invoke-virtual {v8}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, v11

    move-object v9, v1

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 201
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    .line 202
    iget-boolean v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mAppendStaticPreferences:Z

    if-eqz v0, :cond_7

    .line 203
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addStaticPreferences(Landroidx/preference/PreferenceScreen;)V

    :cond_7
    return-void
.end method

.method public updateCheckedState(Ljava/lang/String;)V
    .locals 6

    .line 221
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 223
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 226
    instance-of v3, v2, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v3, :cond_0

    .line 227
    move-object v3, v2

    check-cast v3, Lcom/android/settings/widget/RadioButtonPreference;

    .line 228
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 229
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eq v5, v4, :cond_0

    .line 230
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
