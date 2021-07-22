.class public Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPReadingModeTurnOnPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final ASK_VALUE:I = 0x0

.field private static final CHROMATIC_VALUE:I = 0x2

.field private static final DIALOG_SELECTED_CHROMATIC:I = 0x0

.field private static final DIALOG_SELECTED_MONO:I = 0x1

.field private static final KEY_READING_MODE_TURN_ON:Ljava/lang/String; = "reading_mode_turn_on"

.field private static final MONO_VALUE:I = 0x1

.field public static final READING_MODE_STATUS:Ljava/lang/String; = "reading_mode_status"

.field public static final READING_MODE_STATUS_MANUAL:Ljava/lang/String; = "reading_mode_status_manual"

.field private static final TAG:Ljava/lang/String; = "com.oneplus.settings.better.OPReadingModeTurnOnPreferenceController"


# instance fields
.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

.field private selectvalue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "reading_mode_turn_on"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 45
    iput-object p2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->selectvalue:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private showSelectEffectDialog()V
    .locals 4

    const/4 v0, 0x2

    .line 76
    iput v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->selectvalue:I

    .line 77
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->oneplus_reading_mode_select_effect:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$array;->oneplus_reading_mode_effec_select:I

    new-instance v2, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V

    const/4 v3, 0x3

    .line 78
    invoke-virtual {v0, v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->alert_dialog_cancel:I

    new-instance v2, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V

    .line 98
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V

    .line 105
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

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

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "reading_mode_turn_on"

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 53
    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    :cond_0
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

    const-string p0, "reading_mode_turn_on"

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

.method public onPause()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "reading_mode_status"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 121
    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 122
    new-instance v0, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v0, v2}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "reading_mode_option_manual"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    sget v2, Lcom/android/settings/R$string;->oneplus_reading_mode_ask:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    sget v2, Lcom/android/settings/R$string;->oneplus_reading_mode_turn_on_mono:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    sget v2, Lcom/android/settings/R$string;->oneplus_reading_mode_turn_on_chromatic:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 136
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    if-eqz v0, :cond_5

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_5
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_option_manual"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    const-string v3, "reading_mode_status_manual"

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->showSelectEffectDialog()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "force-on"

    invoke-static {p0, v3, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    .line 67
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "force-on-color"

    invoke-static {p0, v3, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "force-off"

    invoke-static {p0, v3, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
