.class public Lcom/android/settings/notification/AlarmRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "AlarmRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "alarm_ringtone"

    return-object p0
.end method

.method public getRingtoneType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method
