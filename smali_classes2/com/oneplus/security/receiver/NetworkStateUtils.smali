.class public Lcom/oneplus/security/receiver/NetworkStateUtils;
.super Ljava/lang/Object;
.source "NetworkStateUtils.java"


# static fields
.field private static netWorkState:I


# direct methods
.method public static currentNetWorkIsMobileData(Landroid/content/Context;)Z
    .locals 1

    .line 87
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->getNetWorkState(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static currentNetWorkIsWlan(Landroid/content/Context;)Z
    .locals 1

    .line 104
    sget v0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    if-nez v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->reGetNetworkState(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    .line 107
    :cond_0
    sget p0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getNetWorkState(Landroid/content/Context;)I
    .locals 1

    .line 73
    sget v0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->reGetNetworkState(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "netWorkState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkStateUtils"

    invoke-static {v0, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget p0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    return p0
.end method

.method public static isNetWorkAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 117
    sget v0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->reGetNetworkState(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    .line 120
    :cond_0
    sget p0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onReceiveNetWorkStateChanged(Landroid/content/Context;)V
    .locals 2

    .line 124
    invoke-static {p0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->reGetNetworkState(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------netWorkState--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/security/receiver/NetworkStateUtils;->netWorkState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStateUtils"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictService;->applyRules(Landroid/content/Context;)V

    return-void
.end method

.method private static reGetNetworkState(Landroid/content/Context;)I
    .locals 5

    const-string v0, "connectivity"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 142
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 146
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 150
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    :cond_2
    return v2

    .line 156
    :cond_3
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 158
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 159
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_7

    .line 161
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_4

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_7

    .line 162
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    const-string v0, "TD-SCDMA"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CDMA2000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x5

    return p0

    :cond_6
    :goto_0
    return v1

    :cond_7
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
