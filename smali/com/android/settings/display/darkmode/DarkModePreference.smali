.class public Lcom/android/settings/display/darkmode/DarkModePreference;
.super Lcom/android/settings/widget/MasterSwitchPreference;
.source "DarkModePreference.java"


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

.field private mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p2, Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    .line 41
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    .line 42
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    new-instance p2, Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    .line 44
    new-instance p1, Lcom/android/settings/display/darkmode/-$$Lambda$DarkModePreference$2Bk4dVlLCcWxOCDjzV5qjb0rWII;

    invoke-direct {p1, p0}, Lcom/android/settings/display/darkmode/-$$Lambda$DarkModePreference$2Bk4dVlLCcWxOCDjzV5qjb0rWII;-><init>(Lcom/android/settings/display/darkmode/DarkModePreference;)V

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mCallback:Ljava/lang/Runnable;

    .line 51
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 46
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/lit8 v2, v0, 0x1

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/darkmode/DarkModePreference;->updateSummary(ZZ)V

    return-void
.end method

.method private updateSummary(ZZ)V
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 69
    sget p1, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_on:I

    goto :goto_0

    .line 70
    :cond_0
    sget p1, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_off:I

    .line 71
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 79
    sget v2, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_auto:I

    goto :goto_1

    .line 80
    :cond_2
    sget v2, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_auto:I

    .line 78
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    if-eqz p2, :cond_4

    .line 83
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_2

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object p1

    .line 85
    :goto_2
    iget-object v2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {v2, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;->of(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_5

    .line 87
    sget v3, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_custom:I

    goto :goto_3

    .line 88
    :cond_5
    sget v3, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_custom:I

    :goto_3
    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 90
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_7

    .line 91
    sget v2, Lcom/android/settings/R$string;->dark_ui_summary_on_auto_mode_never:I

    goto :goto_4

    .line 92
    :cond_7
    sget v2, Lcom/android/settings/R$string;->dark_ui_summary_off_auto_mode_never:I

    .line 90
    :goto_4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_8

    .line 95
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_on:I

    goto :goto_6

    .line 96
    :cond_8
    sget p2, Lcom/android/settings/R$string;->dark_ui_summary_off:I

    :goto_6
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 94
    invoke-virtual {v2, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DarkModePreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/darkmode/DarkModePreference;->lambda$new$0()V

    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 63
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->unsubscribe()V

    return-void
.end method
