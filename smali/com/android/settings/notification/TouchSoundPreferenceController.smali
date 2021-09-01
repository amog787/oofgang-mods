.class public Lcom/android/settings/notification/TouchSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "TouchSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    new-instance p1, Lcom/android/settings/notification/TouchSoundPreferenceController$1;

    const/4 p2, 0x0

    new-array v6, p2, [I

    const/4 v2, 0x2

    const-string v3, "touch_sounds"

    const-string v4, "sound_effects_enabled"

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/TouchSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/TouchSoundPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_touch_sounds:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
