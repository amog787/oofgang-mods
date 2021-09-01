.class public Lcom/android/settings/security/CryptKeeperSettings;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "CryptKeeperSettings.java"


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/security/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/security/CryptKeeperSettings$1;-><init>(Lcom/android/settings/security/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/settings/security/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/security/CryptKeeperSettings$2;-><init>(Lcom/android/settings/security/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/security/CryptKeeperSettings;I)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/security/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method private addEncryptionInfoToPreference(Landroidx/preference/Preference;I[B)V
    .locals 2

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "device_policy"

    .line 216
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 217
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result p0

    const-string v0, "password"

    const-string v1, "type"

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 175
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string p1, ""

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(I[B)V

    return v3

    .line 181
    :cond_0
    sget p0, Lcom/android/settings/R$string;->crypt_keeper_encrypt_title:I

    .line 182
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 181
    invoke-virtual {v1, p1, p0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method private showFinalConfirmation(I[B)V
    .locals 2

    .line 206
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 207
    const-class v1, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 208
    sget v1, Lcom/android/settings/R$string;->crypt_keeper_confirm_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 209
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/security/CryptKeeperSettings;->addEncryptionInfoToPreference(Landroidx/preference/Preference;I[B)V

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "device_policy"

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    :cond_0
    sget p1, Lcom/android/settings/R$string;->crypt_keeper_encrypt_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p2, "type"

    .line 196
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "password"

    .line 197
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p3

    if-nez p3, :cond_1

    .line 200
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(I[B)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 110
    sget p2, Lcom/android/settings/R$layout;->crypt_keeper_settings:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 112
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->initiate_encrypt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 116
    iget-object p2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->warning_unplugged:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    .line 120
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->warning_low_charge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    .line 122
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
