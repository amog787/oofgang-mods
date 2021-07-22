.class public Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WallpaperAttributionsPreferenceController.java"


# static fields
.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6003:Ljava/lang/String; = "ONEPLUS A6003"

.field private static final ONEPLUS_WALLPAPER_ATTRIBUTIONS_STARWAR_VALUES:Ljava/lang/String; = "\u00a9 &amp;\u2122 Lucasfilm Ltd."


# instance fields
.field private KEY:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 65
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_2017_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 67
    :cond_0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_a5010_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 69
    :cond_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A6000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A6003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_1

    .line 71
    :cond_2
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_for_china_and_india:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_for_europe_and_america:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8150Products()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 75
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_8150_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 76
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 78
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportREDTheme()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_8250_R_values:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_red_values:I

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 83
    :cond_5
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_8250_R_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 87
    :cond_6
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 73
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_17819_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 70
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_17819_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 89
    :goto_2
    sget-object p1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 90
    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const-string/jumbo p1, "\u00a9 &amp;\u2122 Lucasfilm Ltd."

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 91
    :cond_9
    sget-object p1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 92
    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget p1, Lcom/android/settings/R$string;->oneplus_wallpaper_attributions_avg_values:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_wallpaper_attribution:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
