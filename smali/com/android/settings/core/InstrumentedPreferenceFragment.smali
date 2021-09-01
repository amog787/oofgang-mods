.class public abstract Lcom/android/settings/core/InstrumentedPreferenceFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
.source "InstrumentedPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# instance fields
.field protected mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;-><init>()V

    return-void
.end method

.method private enableSpringEdgeEffect()V
    .locals 5

    .line 142
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v1, "InstrumentedPrefFrag"

    if-nez v0, :cond_0

    const-string p0, "enableSpringEdgeEffect list == null"

    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "enableSpringEdgeEffect parent == null"

    .line 149
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableSpringEdgeEffect parent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    new-instance v1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 159
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 160
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    const/4 v3, 0x0

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setSaveEnabled(Z)V

    .line 162
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 163
    sget v3, Landroidx/preference/R$id;->recycler_view:I

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->addSpringView(I)V

    .line 164
    invoke-virtual {v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 165
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    new-instance v2, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;-><init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private updateActivityTitleWithScreenTitle(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen title missing for fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstrumentedPrefFrag"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->updateActivityTitleWithScreenTitle(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method protected final getPrefContext()Landroid/content/Context;
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 60
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 62
    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 64
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/survey/SurveyMixin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/survey/SurveyMixin;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreenResId()I

    move-result p1

    if-lez p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 137
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableSpringEdgeEffect()V

    return-object p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 100
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->setSourceMetricsCategory(Landroid/app/Activity;)V

    .line 72
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onResume()V

    return-void
.end method

.method protected writeElapsedTimeMetric(ILjava/lang/String;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->writeElapsedTimeMetric(ILjava/lang/String;)V

    return-void
.end method

.method protected writePreferenceClickMetric(Landroidx/preference/Preference;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    return-void
.end method
