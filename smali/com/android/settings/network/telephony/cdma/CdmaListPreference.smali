.class public Lcom/android/settings/network/telephony/cdma/CdmaListPreference;
.super Landroidx/preference/ListPreference;
.source "CdmaListPreference.java"


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    :cond_1
    return-void
.end method

.method public setSubId(I)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 45
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method
