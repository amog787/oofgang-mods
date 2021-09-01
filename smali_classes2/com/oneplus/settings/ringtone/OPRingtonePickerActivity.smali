.class public Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPRingtonePickerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mMainRoot:Landroid/preference/PreferenceCategory;

.field private mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mRequestCode:I

.field private mRingtoneVibrateCategory:Landroid/preference/PreferenceCategory;

.field private mSMSNotificationVibrateIntensityPreference:Landroid/preference/Preference;

.field private mSim1Layout:Landroid/preference/Preference;

.field private mSim1Uri:Landroid/net/Uri;

.field private mSim2Layout:Landroid/preference/Preference;

.field private mSim2Uri:Landroid/net/Uri;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mSystemRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUriForLocalItem:Landroid/net/Uri;

.field private mVibrateCategory:Landroid/preference/PreferenceCategory;

.field protected mVibratePattern:[J

.field private mVibrateRingPreference:Landroid/preference/Preference;

.field private mVibrateWhenRingObserver:Landroid/database/ContentObserver;

.field private mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    const/16 v0, 0x64

    .line 74
    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    .line 530
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 598
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/SwitchPreference;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    return-object p0
.end method

.method private initPreference(Z)V
    .locals 9

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 206
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    const/16 p1, 0xa

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 211
    :cond_0
    new-instance v2, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 213
    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    .line 215
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-static {p0, v4, v3}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v6

    .line 218
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSortByTrack()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 220
    invoke-static {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 222
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v7, "_"

    const-string v8, " "

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 224
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int v3, p1, v0

    .line 228
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 231
    :cond_3
    :goto_0
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 232
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 237
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 242
    :cond_4
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 247
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    if-eqz p1, :cond_6

    .line 249
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 251
    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 255
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_4
    return-void
.end method

.method private initVibrateWhenRingPreference(Z)V
    .locals 1

    const-string v0, "vibrate_when_ringing"

    .line 181
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    .line 182
    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isRampingRingerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneVibrateCategory:Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private isRampingRingerEnabled()Z
    .locals 2

    const-string p0, "telephony"

    const-string v0, "ramping_ringer_enabled"

    const/4 v1, 0x0

    .line 570
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private switchSimRingtone(Z)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 p1, 0x1

    .line 200
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    :goto_0
    return-void
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 2

    .line 497
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 502
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 506
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePreference()V
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 94
    instance-of v1, v0, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_0

    .line 95
    check-cast v0, Landroid/database/CursorWrapper;

    .line 96
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 100
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x0

    const-string v2, "vibrate_strength"

    const-string v3, "vibrate"

    const-string v4, "setting_title"

    const-string v5, "no_select"

    const-string v6, "local_select"

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    sget v0, Lcom/android/settings/R$xml;->op_ring_switch_fragment:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    .line 103
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "setting_key"

    .line 104
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "sim1_select"

    .line 105
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    const-string v0, "sim2_select"

    .line 106
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    .line 107
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 108
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    .line 113
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v3

    .line 112
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 116
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isProfileId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :cond_2
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->switchSimRingtone(Z)V

    .line 122
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    .line 123
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->oneplus_vibrate_rhythm:I

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_4
    invoke-direct {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initVibrateWhenRingPreference(Z)V

    .line 131
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-eqz v0, :cond_b

    .line 132
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 136
    :cond_5
    sget v0, Lcom/android/settings/R$xml;->op_ring_system_fragment:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 137
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 138
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    const-string v0, "defualt_select"

    .line 139
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 140
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "sms_notification_vibrate_intensity"

    .line 141
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSMSNotificationVibrateIntensityPreference:Landroid/preference/Preference;

    .line 142
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    const-string v0, "ringtone_vibrate"

    .line 144
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneVibrateCategory:Landroid/preference/PreferenceCategory;

    .line 146
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    .line 148
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    if-ne v0, v7, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 149
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    .line 151
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->oneplus_vibrate_rhythm:I

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    :cond_7
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initVibrateWhenRingPreference(Z)V

    goto :goto_0

    .line 159
    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    :cond_9
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-direct {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    .line 174
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    return-void
.end method

.method private updateSimSwitch()V
    .locals 5

    .line 331
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSim1Enable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSim2Enable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 341
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 340
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 343
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 346
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 345
    invoke-static {v0, v2, v3, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v4, 0x2

    .line 347
    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v1

    .line 349
    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 350
    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 352
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 355
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 356
    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 357
    invoke-static {p0, v0, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_3
    sget v0, Lcom/android/settings/R$string;->oneplus_no_ringtone:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    .line 361
    iget-object v1, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 362
    invoke-static {p0, v1, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 363
    :cond_5
    sget v1, Lcom/android/settings/R$string;->oneplus_no_ringtone:I

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 361
    :goto_1
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 585
    iget p2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    .line 588
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 589
    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 590
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 591
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibrator"

    .line 85
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrator:Landroid/os/Vibrator;

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updatePreference()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 580
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 565
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onPause()V

    .line 566
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    .line 384
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setting_key"

    .line 385
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 387
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 388
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 387
    invoke-static {p1, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setRingSimSwitch(Landroid/content/Context;I)V

    .line 389
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone2(Landroid/content/Context;)V

    .line 392
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone(Landroid/content/Context;)V

    .line 399
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 400
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 401
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    .line 405
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startVibrate()V

    goto/16 :goto_1

    :cond_1
    const-string v1, "local_select"

    .line 406
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    const-string v4, "android.intent.extra.ringtone.TYPE"

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 408
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 414
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    const-string v1, "ringtone_for_contacts"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    const-string v1, "needVibrate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    invoke-virtual {p0, p1, v0}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "no_select"

    .line 424
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "-1"

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    .line 425
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 426
    invoke-direct {p0, v5}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result p1

    if-nez p1, :cond_3

    .line 429
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 428
    invoke-static {p1, v1, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 431
    :cond_3
    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p1, :cond_4

    .line 432
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 434
    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 435
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    iput-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    .line 439
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v0, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 440
    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_5
    const-string v1, "sim1_select"

    .line 441
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "oneplus.intent.extra.ringtone.simid"

    if-eqz v1, :cond_6

    .line 442
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    invoke-virtual {p1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 446
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "sim2_select"

    .line 448
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 449
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 450
    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 453
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "defualt_select"

    .line 455
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x12c

    if-eqz v1, :cond_9

    .line 456
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 457
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 458
    invoke-direct {p0, v5}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUriForDefaultItem:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " key:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 461
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 462
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p1, :cond_8

    .line 463
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 465
    :cond_8
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v0, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 466
    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_9
    const-string v1, "vibrate_when_ringing"

    .line 467
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 468
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startVibrate()V

    .line 469
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 470
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p0

    .line 469
    invoke-static {p1, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    const-string v1, "vibrate_strength"

    .line 471
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x270f

    if-eqz v1, :cond_b

    .line 472
    const-class p1, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_b
    const-string v1, "sms_notification_vibrate_intensity"

    .line 473
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 474
    const-class p1, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 476
    :cond_c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 477
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v1

    if-nez v1, :cond_d

    .line 481
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getUserContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 480
    invoke-static {v1, v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 484
    :cond_d
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 485
    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p1, :cond_e

    .line 486
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 488
    :cond_e
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 489
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 490
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v0, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 491
    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    :goto_1
    return v2
.end method

.method protected onResume()V
    .locals 4

    .line 553
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onResume()V

    .line 554
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    const-string v2, "vibrate_when_ringing"

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 513
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 514
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 524
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 527
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

.method public startVibrate()V
    .locals 3

    .line 370
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrator:Landroid/os/Vibrator;

    const/16 v2, 0x3eb

    .line 371
    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibratePattern:[J

    .line 374
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_0
    return-void
.end method

.method protected updateSelected()V
    .locals 7

    .line 268
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSimSwitch()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "-1"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 276
    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 277
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p0, :cond_8

    .line 278
    invoke-virtual {p0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 292
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 293
    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    return-void

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 299
    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v0, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 304
    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 305
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p0, :cond_8

    .line 306
    invoke-virtual {p0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_6

    .line 314
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 316
    invoke-static {v0, v1, v2, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v2, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_0

    .line 320
    :cond_7
    sget v2, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 322
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method
