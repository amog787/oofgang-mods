.class public Lcom/android/settings/development/AnimatorDurationScalePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AnimatorDurationScalePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final ANIMATOR_DURATION_SCALE_SELECTOR:I = 0x2

.field static final DEFAULT_VALUE:F = 1.0f


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "window"

    .line 50
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->animator_duration_scale_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->animator_duration_scale_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method

.method private updateAnimationScaleValue()V
    .locals 4

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 100
    iget-object v2, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private writeAnimationScaleOption(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->updateAnimationScaleValue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "animator_duration_scale"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p2}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->updateAnimationScaleValue()V

    return-void
.end method
