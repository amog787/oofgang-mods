.class public Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "OPSmsRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getDefaultSmsNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mms_notification"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getShowSilent()Z

    move-result v1

    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/16 v2, 0x8

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 26
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p0, 0x8

    const-string v0, "android.intent.extra.ringtone.TYPE"

    .line 28
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPSmsRingtonePreference;->getDefaultSmsNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "mms_notification"

    .line 38
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
