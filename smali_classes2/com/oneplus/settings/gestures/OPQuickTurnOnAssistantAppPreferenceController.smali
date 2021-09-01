.class public Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPQuickTurnOnAssistantAppPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final ASK_ALEXA_VALUE:I = 0x2

.field private static final CAMERA_VALUE:I = 0x0

.field private static final KEY_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "double_tap_power_gesture"

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_FIVE_TIMES:I = 0x5

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_NO_TIMES:I = -0x1

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_THREE_TIMES:I = 0x3

.field private static final WALLET_VALUE:I = 0x1


# instance fields
.field private mSwitch:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "double_tap_power_gesture"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private updateSwitchSummary()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_affordance_needed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oneplus_emergency_tap_power_gesture_times"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v5, :cond_2

    if-eqz v0, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    :cond_2
    :goto_1
    if-ne v3, v4, :cond_3

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 75
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_emergency_tap_power_gesture_tips:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_app_double_tap_power_gesture"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "camera_double_tap_power_gesture_disabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 81
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_double_tap_power_none:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 83
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_double_tap_power_gesture_camera:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_5
    if-ne v0, v1, :cond_6

    .line 85
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_double_tap_power_gesture_wallet:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 87
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_double_tap_power_ask_alexa:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    :goto_2
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

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "double_tap_power_gesture"

    .line 40
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "double_tap_power_gesture"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "double_tap_power_gesture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p1, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x270f

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

.method public onResume()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->updateSwitchSummary()V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
