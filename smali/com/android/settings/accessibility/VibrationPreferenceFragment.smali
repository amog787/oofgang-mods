.class public abstract Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;,
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_INTENSITY_HIGH:Ljava/lang/String; = "intensity_high"

.field static final KEY_INTENSITY_LOW:Ljava/lang/String; = "intensity_low"

.field static final KEY_INTENSITY_MEDIUM:Ljava/lang/String; = "intensity_medium"

.field static final KEY_INTENSITY_OFF:Ljava/lang/String; = "intensity_off"

.field static final KEY_INTENSITY_ON:Ljava/lang/String; = "intensity_on"


# instance fields
.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    return-void
.end method

.method private hasVibrationEnabledSetting()Z
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private loadCandidates(Landroid/content/Context;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->config_vibration_supports_multiple_intensities:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "intensity_off"

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    sget v3, Lcom/android/settings/R$string;->accessibility_vibration_intensity_off:I

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    sget v1, Lcom/android/settings/R$string;->accessibility_vibration_intensity_low:I

    const/4 v2, 0x1

    const-string v3, "intensity_low"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    sget v1, Lcom/android/settings/R$string;->accessibility_vibration_intensity_medium:I

    const/4 v2, 0x2

    const-string v3, "intensity_medium"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    sget v1, Lcom/android/settings/R$string;->accessibility_vibration_intensity_high:I

    const/4 v2, 0x3

    const-string v3, "intensity_high"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    sget v3, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    sget v1, Lcom/android/settings/R$string;->switch_on_text:I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getDefaultVibrationIntensity()I

    move-result v2

    const-string v3, "intensity_on"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    .line 103
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private updateSettings(Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;)V
    .locals 6

    .line 114
    invoke-virtual {p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->hasVibrationEnabledSetting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apply_ramping_ringer"

    .line 118
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 121
    invoke-static {v5, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq v0, v2, :cond_4

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->playVibrationPreview()V

    :cond_4
    if-nez v0, :cond_5

    .line 150
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->hasVibrationEnabledSetting()Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result p1

    .line 152
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    sget-object p0, Lcom/android/settings/accessibility/-$$Lambda$_Oh9z60fg9jQX72D1CuzQSHZqtM;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$_Oh9z60fg9jQX72D1CuzQSHZqtM;

    .line 205
    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    .line 204
    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 7

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getDefaultVibrationIntensity()I

    move-result v2

    .line 211
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply_ramping_ringer"

    .line 214
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v1, v4

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 217
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    move v0, v3

    .line 222
    :cond_2
    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    .line 223
    invoke-virtual {v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 224
    :goto_2
    invoke-virtual {v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "intensity_on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    if-nez v2, :cond_6

    if-eqz v5, :cond_3

    .line 227
    :cond_6
    invoke-virtual {v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getDefaultVibrationIntensity()I
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getVibrationEnabledSetting()Ljava/lang/String;
.end method

.method protected abstract getVibrationIntensitySetting()Ljava/lang/String;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->register()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->loadCandidates(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 159
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 160
    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->unregister()V

    return-void
.end method

.method protected onVibrationIntensitySelected(I)V
    .locals 0

    return-void
.end method

.method protected playVibrationPreview()V
    .locals 3

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x0

    .line 188
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 189
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getPreviewVibrationAudioAttributesUsage()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 191
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    if-nez v0, :cond_0

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to set unknown intensity (key="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibrationPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->updateSettings(Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;)V

    .line 241
    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->onVibrationIntensitySelected(I)V

    const/4 p0, 0x1

    return p0
.end method
