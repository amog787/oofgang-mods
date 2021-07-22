.class public Lcom/android/settings/display/NightDisplayPreference;
.super Landroidx/preference/SwitchPreference;
.source "NightDisplayPreference.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

.field private mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/ColorDisplayManager;

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayPreference;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 37
    new-instance p2, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p2, p1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayPreference;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    .line 38
    new-instance p2, Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/NightDisplayTimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayPreference;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeTimeSummary(Landroid/content/Context;Landroid/hardware/display/ColorDisplayManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 46
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 57
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayPreference;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
