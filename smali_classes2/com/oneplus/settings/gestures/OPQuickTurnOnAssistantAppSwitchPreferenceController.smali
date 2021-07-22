.class public Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;
.super Ljava/lang/Object;
.source "OPQuickTurnOnAssistantAppSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;


# virtual methods
.method public onStart()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController;->mQuickTurnOnAssistantAppSwitchEnabler:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppSwitchPreferenceController$QuickTurnOnAssistantAppSwitchEnabler;->pause()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
