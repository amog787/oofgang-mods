.class public Lcom/android/settingslib/net/SignalStrengthUtil;
.super Ljava/lang/Object;
.source "SignalStrengthUtil.java"


# direct methods
.method public static shouldInflateSignalStrength(Landroid/content/Context;I)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110095

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
