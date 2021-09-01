.class public Lcom/android/settings/network/NetworkScorerPicker;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "NetworkScorerPicker.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# instance fields
.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private getActiveScorerPackage()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setActiveScorer(Ljava/lang/String;)Z
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, p1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateCheckedState(Ljava/lang/String;)V
    .locals 4

    .line 130
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 134
    instance-of v3, v2, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v3, :cond_0

    .line 135
    move-object v3, v2

    check-cast v3, Lcom/android/settings/widget/RadioButtonPreference;

    .line 136
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


# virtual methods
.method createNetworkScorerManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;
    .locals 0

    const-string p0, "network_score"

    .line 143
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 74
    sget p0, Lcom/android/settings/R$xml;->network_scorer_picker_prefs:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->createNetworkScorerManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->updateCandidates()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->updateCheckedState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCandidates()V
    .locals 8

    .line 79
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 82
    iget-object v1, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 86
    sget v4, Lcom/android/settings/R$string;->network_scorer_picker_none_preference:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 88
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 90
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 92
    invoke-virtual {v3, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 94
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 98
    new-instance v5, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkScorerAppData;

    .line 100
    invoke-virtual {v6}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v6}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 103
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    invoke-virtual {v5, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 105
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
