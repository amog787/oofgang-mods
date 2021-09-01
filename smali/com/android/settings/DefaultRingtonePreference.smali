.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    const-string/jumbo v0, "volume"

    const-string v1, "ringtone click"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v1

    const-string v2, "CURRENT_USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 47
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result p0

    .line 62
    invoke-static {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method
