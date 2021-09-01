.class public Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LegacyIncrementalScanBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;
    }
.end annotation


# static fields
.field private static sPhoneCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private mQueryDetails:[Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 114
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    sput p1, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->sPhoneCount:I

    .line 115
    new-array p1, p1, [Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;

    iput-object p1, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mQueryDetails:[Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;

    const/4 p1, 0x0

    .line 116
    :goto_0
    sget v0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->sPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mQueryDetails:[Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;

    new-instance v1, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;-><init>(Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iput-object p2, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-void
.end method

.method private broadcastIncrementalQueryResults(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "scan_result"

    const/4 v1, -0x1

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "sub_id"

    .line 144
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIncrementalQueryResults: phoneid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LegacyIncrementalScanBroadcastReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ltz v1, :cond_8

    .line 149
    sget v4, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->sPhoneCount:I

    if-lt v1, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const/16 p1, 0x2710

    .line 156
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->onError(I)V

    return-void

    :cond_1
    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    .line 161
    invoke-direct {p0, v4}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->onError(I)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v4, :cond_7

    :cond_3
    const-string v2, "incr_nw_scan_data"

    .line 166
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object v2, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mQueryDetails:[Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;

    aget-object v1, v2, v1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIncrementalQueryResults, scanInfo.length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    .line 170
    :cond_4
    array-length v4, p1

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, v1, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 173
    invoke-virtual {v1, p1}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->concatScanInfo([Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_5
    iput-object p1, v1, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    .line 178
    :goto_1
    iget-object p1, v1, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->storedScanInfo:[Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 179
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->getCellInfosFromScanResult([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->onResults(Ljava/util/List;)V

    :cond_6
    if-nez v0, :cond_7

    .line 186
    invoke-virtual {v1}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver$QueryDetails;->reset()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->onComplete()V

    :cond_7
    return-void

    .line 151
    :cond_8
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->onError(I)V

    return-void
.end method

.method private getCellInfosFromScanResult([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of operators: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    const/4 v1, 0x4

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LegacyIncrementalScanBroadcastReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    array-length v2, p1

    if-lt v2, v1, :cond_0

    array-length v2, p1

    rem-int/2addr v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 197
    :goto_0
    array-length v3, p1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x0

    .line 199
    aget-object v4, p1, v4

    add-int/lit8 v5, v3, 0x1

    .line 200
    aget-object v5, p1, v5

    add-int/lit8 v6, v3, 0x2

    .line 201
    aget-object v6, p1, v6

    add-int/lit8 v3, v3, 0x3

    .line 202
    aget-object v3, p1, v3

    .line 204
    new-instance v7, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v7}, Lcom/android/settings/network/telephony/CellInfoUtil;->convertLegacyIncrScanOperatorInfoToCellInfo(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;

    move-result-object v3

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OperatorInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " CellInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {v3}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoToString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private onComplete()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-virtual {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    return-void
.end method

.method private onError(I)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method private onResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->mNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegacyIncrementalScanBroadcastReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "qualcomm.intent.action.ACTION_INCREMENTAL_NW_SCAN_IND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;->broadcastIncrementalQueryResults(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
