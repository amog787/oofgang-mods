.class public Lcom/oneplus/settings/OPCustomClockSettings;
.super Lcom/oneplus/settings/OPQuitConfirmFragment;
.source "OPCustomClockSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/OnPressListener;


# instance fields
.field private mOPCustomClockPreference:Lcom/oneplus/settings/ui/OPCustomClockPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPCustomClockSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 53
    sget p0, Lcom/android/settings/R$xml;->op_custom_clock_settings:I

    return p0
.end method

.method protected needShowWarningDialog()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/settings/OPCustomClockSettings;->mOPCustomClockPreference:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->needShowWarningDialog()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    iget-object p0, p0, Lcom/oneplus/settings/OPCustomClockSettings;->mOPCustomClockPreference:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->setOnPressListener(Lcom/oneplus/settings/OnPressListener;)V

    const-string p1, "op_custom_clock_preference"

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomClockPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPCustomClockSettings;->mOPCustomClockPreference:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    .line 26
    invoke-virtual {p1, p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
