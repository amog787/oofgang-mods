.class public Lcom/oneplus/settings/better/OPGameModeBatterySaver;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGameModeBatterySaver.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# instance fields
.field private mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

.field private mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

.field private mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/android/settings/R$xml;->op_game_mode_battery_saver:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 41
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string p1, "battery_saver_close"

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "battery_saver_light"

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "battery_saver_high"

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    .line 45
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "game_mode_battery_saver"

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    .line 65
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 66
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 67
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "0_0"

    invoke-static {p0, v3, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 69
    invoke-static {v3, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v5, :cond_1

    .line 71
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 72
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 73
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "56_0"

    invoke-static {p0, v3, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 75
    invoke-static {v3, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v5, :cond_2

    .line 77
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 78
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 79
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "56_30"

    invoke-static {p0, v3, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 81
    invoke-static {v3, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "game_mode_battery_saver"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "0_0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 57
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "56_0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 58
    iget-object p0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v1, "56_30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
