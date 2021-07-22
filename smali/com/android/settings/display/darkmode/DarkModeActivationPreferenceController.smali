.class public Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DarkModeActivationPreferenceController.java"


# instance fields
.field private mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mTurnOffButton:Landroid/widget/Button;

.field private mTurnOnButton:Landroid/widget/Button;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    new-instance p2, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;-><init>(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    .line 51
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 53
    new-instance p2, Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    .line 54
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/display/darkmode/TimeFormatter;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iput-object p3, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)I
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Landroid/app/UiModeManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->updateNightMode(Z)V

    return-void
.end method

.method private updateNightMode(Z)V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 84
    sget v2, Lcom/android/settings/R$string;->dark_ui_activation_off_auto:I

    goto :goto_0

    .line 85
    :cond_0
    sget v2, Lcom/android/settings/R$string;->dark_ui_activation_on_auto:I

    .line 83
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    if-eqz p1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v0

    .line 90
    :goto_1
    iget-object v2, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {v2, v0}, Lcom/android/settings/display/darkmode/TimeFormatter;->of(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 92
    sget v3, Lcom/android/settings/R$string;->dark_ui_activation_off_custom:I

    goto :goto_2

    .line 93
    :cond_3
    sget v3, Lcom/android/settings/R$string;->dark_ui_activation_on_custom:I

    :goto_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    .line 96
    sget v2, Lcom/android/settings/R$string;->dark_ui_activation_off_manual:I

    goto :goto_3

    .line 97
    :cond_5
    sget v2, Lcom/android/settings/R$string;->dark_ui_activation_on_manual:I

    .line 95
    :goto_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/16 v2, 0x8

    if-eqz p1, :cond_6

    .line 100
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 104
    :cond_6
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_5
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

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 151
    sget v0, Lcom/android/settings/R$id;->dark_ui_turn_on_button:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->dark_ui_turn_off_button:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    .line 154
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 114
    :goto_0
    iget-object v3, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 116
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 117
    sget v0, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_auto:I

    goto :goto_1

    .line 118
    :cond_1
    sget v0, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_auto:I

    .line 116
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    if-eqz v0, :cond_3

    .line 121
    iget-object v3, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v3

    goto :goto_2

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v3

    .line 123
    :goto_2
    iget-object v4, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {v4, v3}, Lcom/android/settings/display/darkmode/TimeFormatter;->of(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 126
    sget v0, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_custom:I

    goto :goto_3

    .line 127
    :cond_4
    sget v0, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_custom:I

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 125
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 130
    sget v0, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_never:I

    goto :goto_4

    .line 131
    :cond_6
    sget v0, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_never:I

    .line 129
    :goto_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 75
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->updateNightMode(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
