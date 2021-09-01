.class public Lcom/android/settings/dream/StartNowPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StartNowPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 45
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settingslib/widget/LayoutPreference;Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p2, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 67
    iget-object p0, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->startDreaming()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/dream/StartNowPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 63
    sget v0, Lcom/android/settings/R$id;->dream_start_now_button:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    new-instance v1, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$jHhaL9YNqQfg4aZuushndV2Tc_Y;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$jHhaL9YNqQfg4aZuushndV2Tc_Y;-><init>(Lcom/android/settings/dream/StartNowPreferenceController;Lcom/android/settingslib/widget/LayoutPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "dream_start_now_button_container"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$StartNowPreferenceController(Lcom/android/settingslib/widget/LayoutPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dream/StartNowPreferenceController;->lambda$displayPreference$0(Lcom/android/settingslib/widget/LayoutPreference;Landroid/view/View;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 75
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->dream_start_now_button:I

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 77
    iget-object p0, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
