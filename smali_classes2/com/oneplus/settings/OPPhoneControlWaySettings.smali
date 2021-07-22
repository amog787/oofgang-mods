.class public Lcom/oneplus/settings/OPPhoneControlWaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPPhoneControlWaySettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->updateUI()V

    return-void
.end method

.method private delayHideNavkey()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;-><init>(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initPref()V
    .locals 1

    const-string v0, "always_show_navigation_bar"

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "hide_navigation_bar"

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "gesture_navigation_bar"

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    const-string v0, "phone_control_way"

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    return-void
.end method

.method private setNavigationType(I)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    const-string p0, "op_fullscreen_gesture_enabled"

    .line 231
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method private showNavbar()V
    .locals 0

    return-void
.end method

.method private updateUI()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 166
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

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

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget p1, Lcom/android/settings/R$xml;->op_phone_control_way_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 116
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 118
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->initPref()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 154
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 144
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 145
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 172
    iget-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 173
    iget-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 174
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->showNavbar()V

    .line 175
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    .line 176
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v3, :cond_1

    .line 178
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 179
    iget-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 180
    iget-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 181
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->showNavbar()V

    .line 182
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    const/4 p1, 0x2

    .line 183
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v3, :cond_2

    .line 185
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 186
    iget-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    iget-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 188
    iget-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_to_app_enabled"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    const/4 p1, 0x3

    .line 191
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->updateUI()V

    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 136
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    :cond_0
    return-void
.end method
