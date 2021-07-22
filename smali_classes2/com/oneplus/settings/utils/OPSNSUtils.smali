.class public Lcom/oneplus/settings/utils/OPSNSUtils;
.super Ljava/lang/Object;
.source "OPSNSUtils.java"


# direct methods
.method public static findSlotIdBySubId(I)I
    .locals 5

    .line 152
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 154
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    array-length v4, v3

    if-lez v4, :cond_0

    aget v3, v3, v1

    if-ne p0, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
