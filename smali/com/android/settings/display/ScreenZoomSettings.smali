.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    aget p0, v0, p0

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, p0}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->setForcedDisplayDensity(II)V

    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 102
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    sget p0, Lcom/android/settings/R$layout;->op_screen_zoom_split_activity:I

    return p0

    .line 54
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->op_screen_zoom_activity:I

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 129
    sget p0, Lcom/android/settings/R$string;->help_url_display_size:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x153

    return p0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 3

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_enable_extra_screen_zoom_preview:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 61
    sget v2, Lcom/android/settings/R$layout;->screen_zoom_preview_1:I

    aput v2, p0, v0

    sget v0, Lcom/android/settings/R$layout;->screen_zoom_preview_settings:I

    aput v0, p0, v1

    goto :goto_0

    :cond_0
    new-array p0, v1, [I

    .line 67
    sget v1, Lcom/android/settings/R$layout;->screen_zoom_preview_1:I

    aput v1, p0, v0

    :goto_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result p1

    if-gez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 82
    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    new-array p1, v0, [Ljava/lang/String;

    .line 83
    sget v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getValues()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 90
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getDefaultDensity(Landroid/content/Context;)I

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->screen_zoom_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
