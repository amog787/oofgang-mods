.class public Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPReceiveNotificationsSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# static fields
.field private static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_RECEIVE_NOTIFICATIONS:Ljava/lang/String; = "receive_notifications"

.field private static final KEY_RECEIVE_NOTIFICATIONS_TYPE:I = 0x7

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field private static final PUSH_SWITCH_ACTION:Ljava/lang/String; = "net.oneplus.push.action.SWITCH_CHANGED"


# instance fields
.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "receive_notifications"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "receive_notifications"

    .line 37
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "net.oneplus.push"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "receive_notifications"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "receive_notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    const-string v1, "op_legal_notices_type"

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_from_settings"

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

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
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_receive_notifications"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_2

    .line 64
    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    .line 65
    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    :cond_2
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_receive_notifications"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    const-string v0, "agree_click"

    goto :goto_0

    :cond_0
    const-string v0, "refuse_click"

    :goto_0
    const-string v2, "push.noti"

    .line 76
    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v2, "net.oneplus.push.action.SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "net.oneplus.push"

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 80
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
