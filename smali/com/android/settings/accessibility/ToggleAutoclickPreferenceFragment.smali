.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;


# static fields
.field private static final AUTOCLICK_PREFERENCE_SUMMARIES:[I

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
    .locals 3

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->sControllers:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 69
    sget v1, Lcom/android/settings/R$plurals;->accessibilty_autoclick_preference_subtitle_short_delay:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$plurals;->accessibilty_autoclick_preference_subtitle_medium_delay:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$plurals;->accessibilty_autoclick_preference_subtitle_long_delay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    .line 173
    new-instance v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;

    sget v1, Lcom/android/settings/R$xml;->accessibility_autoclick_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 6
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

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    sget v1, Lcom/android/settings/R$array;->accessibility_autoclick_control_selector_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 165
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 167
    sget-object v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->sControllers:Ljava/util/List;

    new-instance v4, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;

    aget-object v5, v0, v2

    invoke-direct {v4, p0, p1, v5}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    sget-object p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->sControllers:Ljava/util/List;

    return-object p0
.end method

.method static getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 6

    .line 83
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    int-to-float p1, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    const-string v3, "%.0f"

    goto :goto_1

    :cond_1
    const-string v3, "%.1f"

    .line 89
    :goto_1
    sget-object v4, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    aget v0, v4, v0

    new-array v4, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 89
    invoke-virtual {p0, v0, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAutoclickPreferenceSummaryIndex(I)I
    .locals 3

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_1

    .line 101
    sget-object p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1
    const/16 v1, 0x320

    .line 104
    sget-object v2, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    sub-int/2addr p0, v0

    .line 105
    div-int/2addr p0, v1

    return p0
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

    .line 155
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 115
    sget p0, Lcom/android/settings/R$string;->help_url_autoclick:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AutoclickPrefFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x14f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 125
    sget p0, Lcom/android/settings/R$xml;->accessibility_autoclick_settings:I

    return p0
.end method

.method public onCheckedChanged(Landroidx/preference/Preference;)V
    .locals 1

    .line 148
    sget-object p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 149
    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 141
    sget-object p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 142
    check-cast v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->setOnChangeListener(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 132
    sget-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->sControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 133
    check-cast v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->setOnChangeListener(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
