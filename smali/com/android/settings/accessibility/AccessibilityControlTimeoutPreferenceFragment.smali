.class public final Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilityControlTimeoutPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final sControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->sControllers:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment$1;

    sget v1, Lcom/android/settings/R$xml;->accessibility_control_timeout_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    sget v1, Lcom/android/settings/R$array;->accessibility_timeout_control_selector_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 104
    sget-object v2, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->sControllers:Ljava/util/List;

    new-instance v3, Lcom/android/settings/accessibility/AccessibilityTimeoutController;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, p1, v4}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    sget-object p0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->sControllers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 92
    sget p0, Lcom/android/settings/R$string;->help_url_timeout:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccessibilityControlTimeoutPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 82
    sget p0, Lcom/android/settings/R$xml;->accessibility_control_timeout_settings:I

    return p0
.end method

.method public onCheckedChanged(Landroidx/preference/Preference;)V
    .locals 1

    .line 45
    sget-object p0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 66
    check-cast v0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->setOnChangeListener(Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 56
    check-cast v1, Lcom/android/settings/accessibility/AccessibilityTimeoutController;

    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->setOnChangeListener(Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
