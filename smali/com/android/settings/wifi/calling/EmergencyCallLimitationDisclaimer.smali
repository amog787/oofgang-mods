.class public Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;
.super Lcom/android/settings/wifi/calling/DisclaimerItem;
.source "EmergencyCallLimitationDisclaimer.java"


# static fields
.field static final KEY_HAS_AGREED_EMERGENCY_LIMITATION_DISCLAIMER:Ljava/lang/String; = "key_has_agreed_emergency_limitation_disclaimer"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/calling/DisclaimerItem;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getMessageId()I
    .locals 0

    .line 76
    sget p0, Lcom/android/settings/R$string;->wfc_disclaimer_emergency_limitation_desc_text:I

    return p0
.end method

.method protected getName()Ljava/lang/String;
    .locals 0

    const-string p0, "EmergencyCallLimitationDisclaimer"

    return-object p0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_has_agreed_emergency_limitation_disclaimer"

    return-object p0
.end method

.method protected getTitleId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$string;->wfc_disclaimer_emergency_limitation_title_text:I

    return p0
.end method

.method shouldShow()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "emergency_notification_delay_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "shouldShow: false due to carrier config is default(-1)."

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result p0

    return p0
.end method
