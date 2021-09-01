.class public Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "SystemNavigationGestureSettings.java"

# interfaces
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# static fields
.field static final KEY_SYSTEM_NAV_2BUTTONS:Ljava/lang/String; = "system_nav_2buttons"

.field static final KEY_SYSTEM_NAV_3BUTTONS:Ljava/lang/String; = "system_nav_3buttons"

.field static final KEY_SYSTEM_NAV_GESTURAL:Ljava/lang/String; = "system_nav_gestural"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 286
    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;

    sget v1, Lcom/android/settings/R$xml;->system_navigation_gesture_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method static getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 227
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavigationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "system_nav_gestural"

    return-object p0

    .line 229
    :cond_0
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->is2ButtonNavigationEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "system_nav_2buttons"

    return-object p0

    :cond_1
    const-string p0, "system_nav_3buttons"

    return-object p0
.end method

.method private isAnyServiceSupportAccessibilityButton()Z
    .locals 1

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object p0

    .line 278
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isNavBarMagnificationEnabled()Z
    .locals 2

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_navbar_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$bindPreferenceExtra$0(Landroid/view/View;)V
    .locals 1

    .line 144
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.GESTURE_NAVIGATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static migrateOverlaySensitivityToSettings(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .locals 3

    .line 206
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavigationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.systemui.navbar.gestural"

    const/4 v2, -0x2

    .line 212
    invoke-interface {p1, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "system_nav_gestural"

    .line 217
    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setCurrentSystemNavigationMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "back_gesture_inset_scale_left"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "back_gesture_inset_scale_right"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_1
    return-void
.end method

.method static setCurrentSystemNavigationMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 4

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6ee22145

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x51fa588d

    if-eq v0, v1, :cond_1

    const v1, -0x700f466

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "system_nav_3buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "system_nav_gestural"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "system_nav_2buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "com.android.internal.systemui.navbar.gestural"

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    goto :goto_2

    :cond_5
    const-string v0, "com.android.internal.systemui.navbar.twobutton"

    :cond_6
    :goto_2
    const/4 p1, -0x2

    .line 252
    :try_start_0
    invoke-interface {p0, v0, p1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 254
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ee22145

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x51fa588d

    if-eq v1, v2, :cond_1

    const v0, -0x700f466

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "system_nav_3buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "system_nav_gestural"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    const-string v0, "system_nav_2buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    .line 269
    :cond_4
    sget p1, Lcom/android/settings/R$raw;->system_nav_3_button:I

    sget v0, Lcom/android/settings/R$drawable;->system_nav_3_button:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_2

    .line 266
    :cond_5
    sget p1, Lcom/android/settings/R$raw;->system_nav_2_button:I

    sget v0, Lcom/android/settings/R$drawable;->system_nav_2_button:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_2

    .line 262
    :cond_6
    sget p1, Lcom/android/settings/R$raw;->system_nav_fully_gestural:I

    sget v0, Lcom/android/settings/R$drawable;->system_nav_fully_gestural:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    :goto_2
    return-void
.end method


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 134
    instance-of p2, p3, Lcom/android/settings/utils/CandidateInfoExtra;

    if-eqz p2, :cond_2

    instance-of p2, p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    if-nez p2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    move-object p2, p3

    check-cast p2, Lcom/android/settings/utils/CandidateInfoExtra;

    invoke-virtual {p2}, Lcom/android/settings/utils/CandidateInfoExtra;->loadSummary()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    check-cast p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    .line 142
    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "system_nav_gestural"

    if-ne p2, p3, :cond_1

    const/4 p2, 0x2

    .line 143
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    .line 144
    new-instance p2, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$JLPyJ0q716VHKo4MJYnw7DzMMKM;

    invoke-direct {p2, p0}, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$JLPyJ0q716VHKo4MJYnw7DzMMKM;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 147
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    .line 161
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    sget v3, Lcom/android/settings/R$string;->edge_to_edge_navigation_title:I

    .line 164
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->edge_to_edge_navigation_summary:I

    .line 165
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "system_nav_gestural"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "com.android.internal.systemui.navbar.twobutton"

    .line 168
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    sget v3, Lcom/android/settings/R$string;->swipe_up_to_switch_apps_title:I

    .line 171
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->swipe_up_to_switch_apps_summary:I

    .line 172
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "system_nav_2buttons"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    .line 175
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    new-instance v1, Lcom/android/settings/utils/CandidateInfoExtra;

    sget v3, Lcom/android/settings/R$string;->legacy_navigation_title:I

    .line 178
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->legacy_navigation_summary:I

    .line 179
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v4, "system_nav_3buttons"

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 0

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 299
    sget p0, Lcom/android/settings/R$string;->help_uri_default:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 153
    sget p0, Lcom/android/settings/R$xml;->system_navigation_gesture_settings:I

    return p0
.end method

.method public synthetic lambda$bindPreferenceExtra$0$SystemNavigationGestureSettings(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->lambda$bindPreferenceExtra$0(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 85
    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    .line 87
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 89
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_system_navigation_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "overlay"

    .line 93
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 95
    new-instance v0, Lcom/android/settings/widget/VideoPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->system_navigation_illustration_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->setHeight(F)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {p1, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->migrateOverlaySensitivityToSettings(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setCurrentSystemNavigationMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    const-string v0, "system_nav_gestural"

    .line 195
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isAnyServiceSupportAccessibilityButton()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isNavBarMagnificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/SettingsTutorialDialogWrapperActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateCandidates()V
    .locals 11

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getSystemDefaultKey()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    .line 114
    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCandidates()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/widget/CandidateInfo;

    .line 122
    new-instance v10, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v10, v0, v3, v6}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 125
    invoke-virtual {v3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, v10

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v8, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    return-void
.end method
