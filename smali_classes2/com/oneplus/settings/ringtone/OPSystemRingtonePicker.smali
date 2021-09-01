.class public Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPSystemRingtonePicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mSettingTitleCategory:Landroid/preference/PreferenceCategory;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    return-void
.end method

.method private initPreference()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 60
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    .line 62
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 2

    .line 104
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 109
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 111
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/android/settings/R$xml;->op_ring_system_fragment:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 39
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    .line 40
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "ringtone_vibrate"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 41
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "vibrate"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "setting_title"

    .line 42
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSettingTitleCategory:Landroid/preference/PreferenceCategory;

    const-string p1, "local_select"

    .line 43
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    const-string p1, "no_select"

    .line 44
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    const-string p1, "defualt_select"

    .line 45
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSettingTitleCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 47
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->initPreference()V

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateSelected()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .line 117
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "local_select"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 120
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSimId()I

    move-result v0

    const-string v2, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "no_select"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    const-string p1, "-1"

    .line 130
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSimId()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 132
    invoke-static {p1, v1, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 135
    invoke-static {p1, v4, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v0, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 141
    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_2

    .line 143
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const/16 v5, 0x12c

    .line 144
    invoke-virtual {p0, v5, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSimId()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 149
    invoke-static {v0, v4, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 152
    :goto_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v0, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 156
    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    :goto_2
    return v1
.end method

.method protected updateSelected()V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "-1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v2, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 82
    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v0, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    sget v2, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 90
    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_1

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSimId()I

    move-result v4

    .line 93
    invoke-static {v0, v1, v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    sget v3, Lcom/android/settings/R$string;->oneplus_no_choice:I

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    :goto_0
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    .line 98
    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
