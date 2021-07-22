.class public Lcom/android/settings/network/ims/VtQueryImsState;
.super Lcom/android/settings/network/ims/ImsQueryController;
.source "VtQueryImsState.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/network/ims/ImsQueryController;-><init>(III)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mContext:Landroid/content/Context;

    .line 51
    iput p2, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    return-void
.end method


# virtual methods
.method public isAllowUserControl()Z
    .locals 2

    .line 89
    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/VtQueryImsState;->isTtyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isTtyOnVolteEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isEnabledByUser()Z
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 111
    :cond_0
    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/VtQueryImsState;->isEnabledByUser(I)Z

    move-result p0

    return p0
.end method

.method isEnabledByUser(I)Z
    .locals 0

    .line 59
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_0
    new-instance p0, Lcom/android/settings/network/ims/ImsQueryVtUserSetting;

    invoke-direct {p0, p1}, Lcom/android/settings/network/ims/ImsQueryVtUserSetting;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ims/ImsQueryVtUserSetting;->query()Z

    move-result p0

    return p0
.end method

.method public isReadyToVideoCall()Z
    .locals 4

    .line 71
    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isProvisionedOnDevice(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isEnabledByPlatform(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isServiceStateReady(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get Vt ready. subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VtQueryImsState"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method isTtyEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 98
    const-class p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 99
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
