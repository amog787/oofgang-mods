.class public Lcom/android/settings/display/NightDisplayActivationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NightDisplayActivationPreferenceController.java"


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

.field private mTurnOffButton:Landroid/widget/Button;

.field private mTurnOnButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance p2, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;-><init>(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    .line 60
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/ColorDisplayManager;

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 61
    new-instance p2, Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/NightDisplayTimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    .line 62
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)I
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)Landroid/hardware/display/ColorDisplayManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/display/NightDisplayActivationPreferenceController;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->updateStateInternal(Z)V

    return-void
.end method

.method private updateStateInternal(Z)V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 125
    sget v4, Lcom/android/settings/R$string;->night_display_activation_off_custom:I

    goto :goto_0

    .line 126
    :cond_1
    sget v4, Lcom/android/settings/R$string;->night_display_activation_on_custom:I

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    if-eqz v0, :cond_2

    .line 128
    iget-object v6, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v6

    goto :goto_1

    .line 129
    :cond_2
    iget-object v6, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v6

    .line 127
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 124
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 131
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 132
    sget v2, Lcom/android/settings/R$string;->night_display_activation_off_twilight:I

    goto :goto_2

    .line 133
    :cond_4
    sget v2, Lcom/android/settings/R$string;->night_display_activation_on_twilight:I

    .line 131
    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 136
    sget v2, Lcom/android/settings/R$string;->night_display_activation_off_manual:I

    goto :goto_3

    .line 137
    :cond_6
    sget v2, Lcom/android/settings/R$string;->night_display_activation_on_manual:I

    .line 135
    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    const/16 v2, 0x8

    if-eqz v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_8

    .line 145
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->sendAccessibilityEvent(I)V

    goto :goto_5

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_8

    .line 152
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->sendAccessibilityEvent(I)V

    :cond_8
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

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 86
    sget v0, Lcom/android/settings/R$id;->night_display_turn_on_button:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->night_display_turn_off_button:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    .line 89
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeSummary(Landroid/content/Context;Landroid/hardware/display/ColorDisplayManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "night_display_activated"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    move-result p0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    const/4 p1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->updateStateInternal(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
