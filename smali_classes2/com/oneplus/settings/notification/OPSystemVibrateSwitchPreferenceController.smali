.class public Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;
.super Ljava/lang/Object;
.source "OPSystemVibrateSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

.field private mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    .line 20
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 22
    new-instance p1, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-direct {p1, p0, p2, v0}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;-><init>(Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    .line 23
    invoke-virtual {p1, p0}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;->setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;->mSystemVibrateEnabler:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController$SystemVibrateEnabler;->pause()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
