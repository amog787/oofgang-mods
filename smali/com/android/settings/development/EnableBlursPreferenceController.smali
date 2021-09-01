.class public final Lcom/android/settings/development/EnableBlursPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "EnableBlursPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final DISABLE_BLURS_SYSPROP:Ljava/lang/String; = "persist.sys.sf.disable_blurs"


# instance fields
.field private final mBlurSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ro.surface_flinger.supports_background_blur"

    const/4 v1, 0x0

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/EnableBlursPreferenceController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean p2, p0, Lcom/android/settings/development/EnableBlursPreferenceController;->mBlurSupported:Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_blurs_on_windows"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/settings/development/EnableBlursPreferenceController;->mBlurSupported:Z

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string v0, "persist.sys.sf.disable_blurs"

    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/settings/development/EnableBlursPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string p2, "persist.sys.sf.disable_blurs"

    .line 60
    invoke-static {p2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const-string p1, "persist.sys.sf.disable_blurs"

    const/4 v0, 0x0

    .line 72
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 74
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
