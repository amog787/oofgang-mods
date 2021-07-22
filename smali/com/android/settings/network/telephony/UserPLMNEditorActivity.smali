.class public Lcom/android/settings/network/telephony/UserPLMNEditorActivity;
.super Landroid/preference/PreferenceActivity;
.source "UserPLMNEditorActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mAirplaneModeOn:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNWIDDialog:Landroid/app/AlertDialog;

.field private mNWIDPref:Landroid/preference/Preference;

.field private mNWIDPrefListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNWIDText:Landroid/widget/EditText;

.field private mNWMPref:Landroid/preference/ListPreference;

.field private mNoSet:Ljava/lang/String;

.field private mPRIpref:Landroid/preference/EditTextPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNoSet:Ljava/lang/String;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mAirplaneModeOn:Z

    .line 98
    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    .line 99
    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    .line 100
    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    .line 102
    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDDialog:Landroid/app/AlertDialog;

    .line 104
    new-instance v0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;-><init>(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;-><init>(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPrefListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)Landroid/widget/EditText;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->genText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)Landroid/preference/Preference;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)Landroid/preference/ListPreference;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    return-object p0
.end method

.method public static convertApMode2EF(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_2

    const/4 v0, 0x4

    :cond_2
    :goto_0
    return v0
.end method

.method public static convertEFMode2Ap(I)I
    .locals 1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private displayNetworkInfo(Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "uplmn_code"

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->genText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "uplmn_priority"

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 298
    iget-object v3, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v3, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string/jumbo v1, "uplmn_service"

    .line 300
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "act = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UserPLMNEditorActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->convertEFMode2Ap(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    .line 309
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->selectNetworkChoices(Ljava/lang/String;)I

    move-result v3

    .line 309
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->selectNetworkChoices(Ljava/lang/String;)I

    move-result v0

    .line 311
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    .line 313
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private genNWInfoToIntent(Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo v0, "uplmn_service"

    .line 233
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "uplmn_size"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "UserPLMNEditorActivity"

    const-string v4, "parse value of basband error"

    .line 237
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 239
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "uplmn_add"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_0
    if-lt v2, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string/jumbo v2, "uplmn_priority"

    .line 248
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    .line 252
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 251
    invoke-static {v1}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->convertApMode2EF(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 254
    :catch_1
    invoke-static {v3}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->convertApMode2EF(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    :goto_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    const-string/jumbo v0, "uplmn_code"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-void
.end method

.method private genText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 328
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNoSet:Ljava/lang/String;

    return-object p0
.end method

.method private setRemovedNWInfo()V
    .locals 2

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->genNWInfoToIntent(Landroid/content/Intent;)V

    const/16 v1, 0x66

    .line 263
    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setSavedNWInfo()V
    .locals 2

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/UserPLMNListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->genNWInfoToIntent(Landroid/content/Intent;)V

    const/16 v1, 0x65

    .line 228
    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setScreenEnabled()V
    .locals 2

    .line 347
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mAirplaneModeOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 348
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->buttonEnabled()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public buttonEnabled()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 340
    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_2

    const/4 v1, -0x1

    .line 341
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    sget p1, Lcom/android/settings/R$xml;->uplmn_editor:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->voicemail_number_not_set:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNoSet:Ljava/lang/String;

    const-string p1, "network_id_key"

    .line 133
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    const-string p1, "priority_key"

    .line 134
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    const-string p1, "network_mode_key"

    .line 135
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    .line 137
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 365
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDText:Landroid/widget/EditText;

    .line 366
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNoSet:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 370
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 371
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDText:Landroid/widget/EditText;

    .line 373
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 375
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPrefListener:Landroid/content/DialogInterface$OnClickListener;

    .line 374
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDDialog:Landroid/app/AlertDialog;

    .line 382
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 384
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDDialog:Landroid/app/AlertDialog;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 176
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 177
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v0, "uplmn_add"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const p0, 0x10402b8

    .line 178
    invoke-interface {p1, v1, v0, v1, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 p0, 0x2

    .line 181
    sget v2, Lcom/android/settings/R$string;->save:I

    invoke-interface {p1, v1, p0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p0, 0x3

    const/high16 v2, 0x1040000

    .line 182
    invoke-interface {p1, v1, p0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 4

    .line 188
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 189
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNoSet:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNoSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    .line 190
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p2, :cond_5

    .line 192
    iget-boolean v2, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mAirplaneModeOn:Z

    xor-int/2addr v2, v1

    invoke-interface {p2, v0, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 195
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "uplmn_add"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mAirplaneModeOn:Z

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 198
    :cond_3
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mAirplaneModeOn:Z

    if-nez p0, :cond_4

    if-nez p1, :cond_4

    move v0, v1

    :cond_4
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return v1

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->setSavedNWInfo()V

    goto :goto_0

    .line 211
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->setRemovedNWInfo()V

    .line 221
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 222
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mPRIpref:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 162
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->genText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 164
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 166
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    .line 168
    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->selectNetworkChoices(Ljava/lang/String;)I

    move-result v0

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    aget-object p1, p2, p1

    .line 169
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mNWIDPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->removeDialog(I)V

    .line 356
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->showDialog(I)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->buttonEnabled()V

    .line 359
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 3

    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 146
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->displayNetworkInfo(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 148
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->mAirplaneModeOn:Z

    .line 150
    invoke-direct {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->setScreenEnabled()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public selectNetworkChoices(Ljava/lang/String;)I
    .locals 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPLMNEditorActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->uplmn_cu_mcc_mnc_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 320
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 321
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget p0, Lcom/android/settings/R$array;->uplmn_prefer_network_mode_w_choices:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_1
    sget p0, Lcom/android/settings/R$array;->uplmn_prefer_network_mode_td_choices:I

    return p0
.end method
