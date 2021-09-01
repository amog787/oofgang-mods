.class public Lcom/oneplus/settings/controllers/OPSMSRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "OPSMSRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "message_ringtone"

    return-object p0
.end method

.method public getRingtoneType()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->updateState(Landroidx/preference/Preference;)V

    .line 51
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->op_sms_ringtone:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
