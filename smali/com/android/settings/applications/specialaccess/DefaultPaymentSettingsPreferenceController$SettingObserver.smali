.class Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "DefaultPaymentSettingsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final NFC_ON_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;

    .line 205
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "nfc_on"

    .line 201
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->NFC_ON_URI:Landroid/net/Uri;

    .line 206
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;)Landroidx/preference/Preference;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 220
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->NFC_ON_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->access$000(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "nfc_on"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 225
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver$1;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver$1;-><init>(Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    sget p2, Lcom/android/settings/R$string;->nfc_and_payment_settings_payment_off_nfc_off_summary:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 233
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 211
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController$SettingObserver;->NFC_ON_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
