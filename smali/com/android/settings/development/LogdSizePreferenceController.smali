.class public Lcom/android/settings/development/LogdSizePreferenceController;
.super Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;
.source "LogdSizePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->writeLogdSizeOption(Ljava/lang/Object;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->updateLogdSizeValues()V

    return-void
.end method
