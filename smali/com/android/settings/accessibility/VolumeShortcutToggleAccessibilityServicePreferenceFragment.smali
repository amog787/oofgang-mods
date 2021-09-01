.class public Lcom/android/settings/accessibility/VolumeShortcutToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.source "VolumeShortcutToggleAccessibilityServicePreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method

.method private setAllowedPreferredShortcutType(I)V
    .locals 2

    .line 70
    new-instance v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 71
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;-><init>(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$AccessibilityUserShortcutType;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    .line 73
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/SharedPreferenceUtils;->setUserShortcutType(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method getUserShortcutTypes()I
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getUserShortcutTypes()I

    move-result v0

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    .line 58
    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p0, p0, 0x100

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    or-int/lit8 p0, v0, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 p0, v0, -0x2

    :goto_1
    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ShortcutPreference;->setSettingsEditable(Z)V

    const/4 p1, 0x2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/VolumeShortcutToggleAccessibilityServicePreferenceFragment;->setAllowedPreferredShortcutType(I)V

    return-void
.end method
