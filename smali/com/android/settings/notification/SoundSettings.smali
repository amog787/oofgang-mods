.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field static final STOP_SAMPLE:I = 0x1

.field private static isDefaultOPSms:Z = false


# instance fields
.field private mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

.field final mHandler:Landroid/os/Handler;

.field private mHfpOutputControllerKey:Ljava/lang/String;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mSmsRingtonePreference:Landroidx/preference/Preference;

.field final mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 396
    new-instance v0, Lcom/android/settings/notification/SoundSettings$2;

    sget v1, Lcom/android/settings/R$xml;->sound_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/SoundSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    .line 96
    new-instance v0, Lcom/android/settings/notification/SoundSettings$1;

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$1;-><init>(Lcom/android/settings/notification/SoundSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/android/settings/notification/SoundSettings;->isDefaultOPSms:Z

    return v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/SoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    new-instance v1, Lcom/android/settings/notification/PhoneRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/PhoneRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v1, Lcom/android/settings/notification/AlarmRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/AlarmRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v1, Lcom/android/settings/notification/NotificationRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v1, Lcom/oneplus/settings/controllers/OPSMSRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/controllers/OPSMSRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Lcom/android/settings/notification/CallVolumePreferenceController;

    const-string v2, "call_volume"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/CallVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    new-instance v1, Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance p1, Lcom/oneplus/settings/notification/OPSystemVibratePreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/settings/notification/OPSystemVibratePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance p1, Lcom/oneplus/settings/notification/OPSystemXVibratePreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/settings/notification/OPSystemXVibratePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance p1, Lcom/oneplus/settings/controllers/OPDolbyAtmosControlPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/controllers/OPDolbyAtmosControlPreferenceController;-><init>(Landroid/content/Context;)V

    .line 382
    new-instance p2, Lcom/android/settings/notification/zen/ZenModePreferenceController;

    const-string/jumbo v1, "zen_mode"

    invoke-direct {p2, p0, v1}, Lcom/android/settings/notification/zen/ZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    new-instance v1, Lcom/oneplus/settings/controllers/OPEarphoneModeControlPreferenceController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/controllers/OPEarphoneModeControlPreferenceController;-><init>(Landroid/content/Context;)V

    .line 384
    new-instance v2, Lcom/oneplus/settings/controllers/OPSoundEffectPreferenceCategoryController;

    const-string v3, "sound_effect"

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/controllers/OPSoundEffectPreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 v5, 0x2

    aput-object v1, v3, v5

    .line 385
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 384
    invoke-virtual {v2, v3}, Lcom/oneplus/settings/controllers/OPSoundEffectPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/oneplus/settings/controllers/OPSoundEffectPreferenceCategoryController;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v2, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;

    const-string v3, "do_not_disturb"

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v3, p1, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object p2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance p2, Lcom/oneplus/settings/controllers/OPSoundTunerControlPreferenceController;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/controllers/OPSoundTunerControlPreferenceController;-><init>(Landroid/content/Context;)V

    .line 388
    new-instance v2, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;

    const-string v3, "earphone"

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array p0, v5, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v1, p0, v4

    aput-object p2, p0, p1

    .line 389
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 388
    invoke-virtual {v2, p0}, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getDefaultSms()V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.oneplus.mms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 453
    sput-boolean v0, Lcom/android/settings/notification/SoundSettings;->isDefaultOPSms:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 455
    sput-boolean p0, Lcom/android/settings/notification/SoundSettings;->isDefaultOPSms:Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$onAttach$0(Landroidx/preference/ListPreference;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings;->onPreferenceDataChanged(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method private onPreferenceDataChanged(Landroidx/preference/ListPreference;)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    if-eqz p0, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;->onListPreferenceUpdated(Landroidx/preference/ListPreference;)V

    :cond_0
    return-void
.end method

.method private removeSmsRingtone()V
    .locals 1

    const-string v0, "ringtone_and_vibrate"

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/settings/notification/SoundSettings;->mSmsRingtonePreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method enableWorkSync()V
    .locals 1

    .line 435
    const-class v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 436
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    if-eqz p0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->enableWorkSync()V

    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 168
    sget p0, Lcom/android/settings/R$string;->help_url_sound:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SoundSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x150

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 217
    sget p0, Lcom/android/settings/R$xml;->sound_settings:I

    return p0
.end method

.method public synthetic lambda$onAttach$0$SoundSettings(Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings;->lambda$onAttach$0(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 7

    .line 244
    const-class v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 245
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    const-class v1, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    .line 252
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const-class v2, Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/MediaVolumePreferenceController;

    .line 255
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const-class v3, Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/RingVolumePreferenceController;

    .line 258
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    const-class v4, Lcom/oneplus/settings/notification/SoundVolumePreferenceCategoryController;

    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/notification/SoundVolumePreferenceCategoryController;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    .line 260
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 259
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 261
    const-class v1, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-class v1, Lcom/android/settings/notification/CallVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/CallVolumePreferenceController;

    .line 265
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$SoundSettings$N7fFCKwOwYJug19RG1Wew_H_2JM;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$SoundSettings$N7fFCKwOwYJug19RG1Wew_H_2JM;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 278
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "selected_preference"

    .line 125
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "SoundSettings"

    .line 132
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 133
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "message_ringtone"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mSmsRingtonePreference:Landroidx/preference/Preference;

    .line 139
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUssOnly()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGoogleCommSuit()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->removeSmsRingtone()V

    .line 143
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstUnify()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->getDefaultSms()V

    .line 145
    sget-boolean p1, Lcom/android/settings/notification/SoundSettings;->isDefaultOPSms:Z

    if-nez p1, :cond_4

    .line 146
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->removeSmsRingtone()V

    .line 151
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->removeSmsRingtone()V

    :cond_5
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x588

    goto :goto_0

    :cond_0
    move v0, v1

    .line 205
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 206
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SoundSettings"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 173
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 174
    iget-object p0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 179
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 181
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 182
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 185
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 184
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 192
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 237
    iget-object p0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "selected_preference"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
