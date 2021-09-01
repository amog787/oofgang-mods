.class public Lcom/android/settings/notification/PhoneRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "PhoneRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "phone_ringtone"

    return-object p0
.end method

.method public getRingtoneType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
