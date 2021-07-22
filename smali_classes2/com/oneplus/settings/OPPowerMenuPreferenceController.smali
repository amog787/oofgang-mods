.class public Lcom/oneplus/settings/OPPowerMenuPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPPowerMenuPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;


# instance fields
.field final mKEY:Ljava/lang/String;

.field private mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

.field private mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "quick_turn_on_voice_assistant"

    .line 42
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iput-object p3, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mKEY:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 38
    sget-object v0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    return-object p0
.end method

.method private synthetic lambda$displayPreference$0(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 1

    .line 58
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.ACTION_POWER_MENU_SETTINGS"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    .line 65
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "quick_turn_on_voice_assistant"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    .line 57
    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPPowerMenuPreferenceController$Tt4_EhPuCQOEXd_T6GIn-4LcaSs;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/-$$Lambda$OPPowerMenuPreferenceController$Tt4_EhPuCQOEXd_T6GIn-4LcaSs;-><init>(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setOnGearClickListener(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPPowerMenuPreferenceController$vbC30vzQbsKGxQm6wiQf2dpOXH0;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/-$$Lambda$OPPowerMenuPreferenceController$vbC30vzQbsKGxQm6wiQf2dpOXH0;-><init>(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setOnRadioButtonClickListener(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;)V

    .line 67
    new-instance p1, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;-><init>(Lcom/oneplus/settings/OPPowerMenuPreferenceController;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

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

    .line 77
    iget-object p0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mKEY:Ljava/lang/String;

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

.method public synthetic lambda$displayPreference$0$OPPowerMenuPreferenceController(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->lambda$displayPreference$0(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$OPPowerMenuPreferenceController(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->lambda$displayPreference$1(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/OPPowerMenuPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 83
    iget-object p1, p0, Lcom/oneplus/settings/OPPowerMenuPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "quick_turn_on_voice_assistant"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
