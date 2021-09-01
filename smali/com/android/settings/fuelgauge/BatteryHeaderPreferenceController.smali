.class public Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field static final KEY_BATTERY_HEADER:Ljava/lang/String; = "battery_header"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

.field mBatteryPercentText:Landroid/widget/TextView;

.field private mHost:Landroidx/preference/PreferenceFragmentCompat;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mPowerManager:Landroid/os/PowerManager;

.field mSummary1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private formatBatteryPercentageText(I)Ljava/lang/CharSequence;
    .locals 4

    .line 135
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->oneplus_battery_header_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 136
    invoke-static {}, Landroid/icu/text/NumberFormat;->getIntegerInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 135
    invoke-static {p0, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 88
    sget v0, Lcom/android/settings/R$id;->battery_header_icon:I

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryMeterView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    .line 90
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->battery_percent:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryPercentText:Landroid/widget/TextView;

    .line 91
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->summary1:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary1:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

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

.method public onStart()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->battery_entity_header:I

    .line 104
    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    .line 105
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method public quickUpdateHeaderPreference()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "plugged"

    const/4 v3, -0x1

    .line 126
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    invoke-virtual {v3, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 130
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    xor-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryPercentText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->formatBatteryPercentageText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setFragment(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method public setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method

.method public updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryPercentText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->formatBatteryPercentageText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->handleTimeSummary(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary1:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->handleTimeSummary(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    iget v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    iget-boolean p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
