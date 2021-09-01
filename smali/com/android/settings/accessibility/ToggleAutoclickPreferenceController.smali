.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ToggleAutoclickPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;
    }
.end annotation


# static fields
.field private static final AUTOCLICK_CUSTOM_MODE:I = 0x7d0

.field private static final AUTOCLICK_OFF_MODE:I = 0x0

.field private static final CONTROL_AUTOCLICK_DELAY_SECURE:Ljava/lang/String; = "accessibility_autoclick_delay"

.field private static final KEY_AUTOCLICK_CUSTOM_SEEKBAR:Ljava/lang/String; = "autoclick_custom_seekbar"

.field static final KEY_DELAY_MODE:Ljava/lang/String; = "delay_mode"


# instance fields
.field private final mAccessibilityAutoclickKeyToValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentUiAutoClickMode:I

.field private mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

.field private mOnChangeListener:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mSeekBerPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mAccessibilityAutoclickKeyToValueMap:Ljava/util/Map;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mResources:Landroid/content/res/Resources;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->setAutoclickModeToKeyMap()V

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mAccessibilityAutoclickKeyToValueMap:Ljava/util/Map;

    const-string p2, "ToggleAutoclickPreferenceController"

    .line 75
    invoke-static {p2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mResources:Landroid/content/res/Resources;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->setAutoclickModeToKeyMap()V

    return-void
.end method

.method private getSharedPreferenceForAutoClickMode()I
    .locals 2

    .line 194
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "delay_mode"

    const/16 v1, 0x7d0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private handleRadioButtonPreferenceChange(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "accessibility_autoclick_enabled"

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->putSecureInt(Ljava/lang/String;I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "delay_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const-string v0, "accessibility_autoclick_delay"

    .line 185
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->putSecureInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private putSecureInt(Ljava/lang/String;I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setAutoclickModeToKeyMap()V
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$array;->accessibility_autoclick_control_selector_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$array;->accessibility_autoclick_selector_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 172
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 174
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mAccessibilityAutoclickKeyToValueMap:Ljava/util/Map;

    aget-object v5, v0, v3

    aget v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePreferenceCheckedState(I)V
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mCurrentUiAutoClickMode:I

    if-ne v0, p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updatePreferenceVisibleState(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mSeekBerPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mCurrentUiAutoClickMode:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 112
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    const-string v0, "autoclick_custom_seekbar"

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mSeekBerPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 114
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mAccessibilityAutoclickKeyToValueMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->handleRadioButtonPreferenceChange(I)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mOnChangeListener:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;

    if-eqz p1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;->onCheckedChanged(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mOnChangeListener:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController$OnChangeListener;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 138
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_autoclick_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->getSharedPreferenceForAutoClickMode()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iput p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mCurrentUiAutoClickMode:I

    .line 151
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mAccessibilityAutoclickKeyToValueMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->mDelayModePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->updatePreferenceCheckedState(I)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceController;->updatePreferenceVisibleState(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
