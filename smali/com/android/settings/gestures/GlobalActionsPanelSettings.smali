.class public Lcom/android/settings/gestures/GlobalActionsPanelSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GlobalActionsPanelSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mGlobalActionsPanelAnim:Lcom/oneplus/settings/widget/OPLottieAnimPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->global_actions_panel_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "GlobalActionsPanelSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6c0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 74
    sget p0, Lcom/android/settings/R$xml;->global_actions_panel_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "op_global_actions_panel_instructions_anim"

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPLottieAnimPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;->mGlobalActionsPanelAnim:Lcom/oneplus/settings/widget/OPLottieAnimPreference;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 58
    iget-object p0, p0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;->mGlobalActionsPanelAnim:Lcom/oneplus/settings/widget/OPLottieAnimPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->releaseAnimation()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 52
    iget-object p0, p0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;->mGlobalActionsPanelAnim:Lcom/oneplus/settings/widget/OPLottieAnimPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 46
    iget-object p0, p0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;->mGlobalActionsPanelAnim:Lcom/oneplus/settings/widget/OPLottieAnimPreference;

    sget v0, Lcom/android/settings/R$raw;->op_cards_pass_wallet_lottie:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPLottieAnimPreference;->startAnimation(I)V

    return-void
.end method
