.class public Lcom/android/settings/notification/DialPadTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "DialPadTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 35
    new-instance p1, Lcom/android/settings/notification/DialPadTonePreferenceController$1;

    const/4 p2, 0x0

    new-array v6, p2, [I

    const/4 v2, 0x2

    const-string v3, "dial_pad_tones"

    const-string v4, "dtmf_tone"

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/DialPadTonePreferenceController$1;-><init>(Lcom/android/settings/notification/DialPadTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method
