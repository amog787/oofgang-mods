.class public Lcom/android/settings/display/ToggleFontSizePreferenceFragment;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ToggleFontSizePreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static fontSizeValueToIndex(F[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    .line 102
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    .line 103
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 104
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v3, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    sub-int/2addr v2, v1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 110
    :cond_1
    array-length p0, p1

    sub-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method protected commit()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    iget p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    aget p0, v1, p0

    const-string v1, "font_scale"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 72
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    .line 42
    sget p0, Lcom/android/settings/R$layout;->font_size_activity:I

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 89
    sget p0, Lcom/android/settings/R$string;->help_url_font_size:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x154

    return p0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 47
    sget v0, Lcom/android/settings/R$layout;->font_size_preview:I

    const/4 v1, 0x0

    aput v0, p0, v1

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    sget v1, Lcom/android/settings/R$array;->entries_font_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 58
    sget v1, Lcom/android/settings/R$array;->entryvalues_font_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 61
    invoke-static {v0, p1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 62
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    const/4 v0, 0x0

    .line 63
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->title_font_size:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
