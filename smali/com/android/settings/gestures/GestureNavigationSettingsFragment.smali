.class public Lcom/android/settings/gestures/GestureNavigationSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GestureNavigationSettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBackGestureInsetScales:[F

.field private mDefaultBackGestureInset:F

.field private mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 161
    new-instance v0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$1;

    sget v1, Lcom/android/settings/R$xml;->gesture_navigation_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 152
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 153
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private initSeekBarPreference(Ljava/lang/String;)V
    .locals 8

    .line 116
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/LabeledSeekBarPreference;

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    const-string v1, "gesture_left_back_sensitivity"

    if-ne p1, v1, :cond_0

    const-string v1, "back_gesture_inset_scale_left"

    goto :goto_0

    :cond_0
    const-string v1, "back_gesture_inset_scale_right"

    .line 123
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 122
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 128
    :goto_1
    iget-object v6, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 129
    aget v6, v6, v5

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v6, v3

    if-gez v7, :cond_1

    move v4, v5

    move v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 137
    new-instance v2, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$6-L3GEC-HBiNe72OpqyJO365318;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$6-L3GEC-HBiNe72OpqyJO365318;-><init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    new-instance v2, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;-><init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/LabeledSeekBarPreference;->setOnPreferenceChangeStopListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic lambda$initSeekBarPreference$0(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 138
    iget p2, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mDefaultBackGestureInset:F

    iget-object v0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aget p3, v0, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 139
    iget-object p0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    const/4 p3, 0x1

    const-string v0, "gesture_left_back_sensitivity"

    if-ne p1, v0, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/gestures/BackGestureIndicatorView;->setIndicatorWidth(IZ)V

    return p3
.end method

.method private synthetic lambda$initSeekBarPreference$1(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 144
    iget-object p3, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "gesture_left_back_sensitivity"

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p3, v1, p1}, Lcom/android/settings/gestures/BackGestureIndicatorView;->setIndicatorWidth(IZ)V

    .line 145
    iget-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aget p1, p1, p3

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$string;->help_uri_default:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "GestureNavigationSettingsFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 96
    sget p0, Lcom/android/settings/R$xml;->gesture_navigation_settings:I

    return p0
.end method

.method public synthetic lambda$initSeekBarPreference$0$GestureNavigationSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->lambda$initSeekBarPreference$0(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initSeekBarPreference$1$GestureNavigationSettingsFragment(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->lambda$initSeekBarPreference$1(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/android/settings/gestures/BackGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/gestures/BackGestureIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105009c

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mDefaultBackGestureInset:F

    const p2, 0x1070019

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    const-string p1, "gesture_left_back_sensitivity"

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->initSeekBarPreference(Ljava/lang/String;)V

    const-string p1, "gesture_right_back_sensitivity"

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->initSeekBarPreference(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 83
    invoke-virtual {v1, p0}, Lcom/android/settings/gestures/BackGestureIndicatorView;->getLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
