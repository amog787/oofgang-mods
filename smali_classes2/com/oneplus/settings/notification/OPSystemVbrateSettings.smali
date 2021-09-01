.class public Lcom/oneplus/settings/notification/OPSystemVbrateSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPSystemVbrateSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mOPSystemVibrateSwitchPreferenceController:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTempTouchTapIntensity:I

.field private mVibrator:Landroid/os/Vibrator;

.field private sTouchVibrateIntensity:[[J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [[J

    const/4 v1, 0x5

    new-array v2, v1, [J

    .line 40
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->sTouchVibrateIntensity:[[J

    .line 45
    new-instance v0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;-><init>(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;Landroid/os/Looper;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_2
    .array-data 8
        -0x3
        0x0
        0xa
        0x3e8
        0xa
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mTempTouchTapIntensity:I

    return p0
.end method

.method private updateSystemVibrateStatus(I)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPSystemVbrateSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 137
    sget p0, Lcom/android/settings/R$xml;->op_system_vibrate:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 114
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 115
    new-instance v1, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v1, p1, v2}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mOPSystemVibrateSwitchPreferenceController:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

    .line 117
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mOPSystemVibrateSwitchPreferenceController:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    :cond_1
    const-string p1, "light"

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "moderate"

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "intensely"

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    .line 129
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3

    .line 82
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "light"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "moderate"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const-string v0, "intensely"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    .line 91
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "vibrate_on_touch_intensity"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportZVibrationMotor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    goto :goto_1

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 97
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->sTouchVibrateIntensity:[[J

    aget-object v0, v0, v2

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 100
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->updateSystemVibrateStatus(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_on_touch_intensity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    iput v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mTempTouchTapIntensity:I

    .line 70
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->updateSystemVibrateStatus(I)V

    return-void
.end method
