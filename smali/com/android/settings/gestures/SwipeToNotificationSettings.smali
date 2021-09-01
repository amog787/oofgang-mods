.class public Lcom/android/settings/gestures/SwipeToNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SwipeToNotificationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/android/settings/gestures/SwipeToNotificationSettings$1;

    sget v1, Lcom/android/settings/R$xml;->swipe_to_notification_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/gestures/SwipeToNotificationSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/SwipeToNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

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

    const-string p0, "SwipeToNotifSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ef

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$xml;->swipe_to_notification_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object p0

    .line 43
    invoke-interface {p0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_swipe_to_notification_suggestion_complete"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
