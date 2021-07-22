.class public Lcom/oneplus/security/network/simcard/SimcardDataModel;
.super Ljava/lang/Object;
.source "SimcardDataModel.java"

# interfaces
.implements Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;


# static fields
.field private static sInstance:Lcom/oneplus/security/network/simcard/SimcardDataModel;


# instance fields
.field private mContext:Landroid/content/Context;

.field mMSimState:[I

.field private mOperatorSdkSupported:[Z

.field private mOperatorSdkSupportedSyncLock:Ljava/lang/Object;

.field private mPhoneCount:I

.field mSimOperatorCode:[Ljava/lang/String;

.field private mSimStateChangeActionFilter:Landroid/content/IntentFilter;

.field private mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/security/network/simcard/SimStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSimStateListenersLock:[B

.field private mSubIds:[I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 30
    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListenersLock:[B

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimOperatorCode:[Ljava/lang/String;

    .line 35
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mOperatorSdkSupportedSyncLock:Ljava/lang/Object;

    .line 39
    new-instance v1, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;-><init>(Lcom/oneplus/security/network/simcard/SimcardDataModel;)V

    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateChangeActionFilter:Landroid/content/IntentFilter;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mContext:Landroid/content/Context;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListeners:Ljava/util/List;

    const-string v1, "phone"

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mPhoneCount:I

    .line 73
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSubIds:[I

    .line 74
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mMSimState:[I

    .line 75
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mOperatorSdkSupported:[Z

    move p1, v0

    .line 76
    :goto_0
    iget v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mPhoneCount:I

    if-ge p1, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mMSimState:[I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    aput v2, v1, p1

    .line 78
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSubIds:[I

    aput v1, v2, p1

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getOperatorCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->parseOperatorCode(ILjava/lang/String;)Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateChangeActionFilter:Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/simcard/SimcardDataModel;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mPhoneCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/security/network/simcard/SimcardDataModel;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/network/simcard/SimcardDataModel;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->notifySimStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;
    .locals 2

    .line 93
    sget-object v0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->sInstance:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/oneplus/security/network/simcard/SimcardDataModel;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/oneplus/security/network/simcard/SimcardDataModel;->sInstance:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/oneplus/security/network/simcard/SimcardDataModel;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/security/network/simcard/SimcardDataModel;->sInstance:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 100
    :cond_1
    :goto_0
    sget-object p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->sInstance:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    return-object p0
.end method

.method private notifySimStateChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ABSENT"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "simState value "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported yet."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimcardDataModel"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListenersLock:[B

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/security/network/simcard/SimStateListener;

    if-eqz v1, :cond_2

    .line 167
    invoke-interface {v1, p1}, Lcom/oneplus/security/network/simcard/SimStateListener;->onSimStateChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_3
    monitor-exit v0

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setOperatorSdkSupportState(IZ)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mOperatorSdkSupportedSyncLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_1

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mOperatorSdkSupported:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mOperatorSdkSupported:[Z

    aput-boolean p2, p0, p1

    .line 246
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    const-string p0, "SimcardDataModel"

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot id is invalid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static staticGetSubIdBySlotId(I)I
    .locals 1

    .line 274
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 276
    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getCurrentTrafficRunningSlotId()I
    .locals 0

    .line 133
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    invoke-static {p0}, Lcom/oneplus/security/utils/OPSNSUtils;->findSlotIdBySubId(I)I

    move-result p0

    return p0
.end method

.method public getOperatorCode(I)Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getSubIdBySlotId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSlotOperatorName(I)Ljava/lang/String;
    .locals 1

    .line 178
    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getOperatorCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->parseOperatorCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubIdBySlotId(I)I
    .locals 0

    .line 270
    invoke-static {p1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->staticGetSubIdBySlotId(I)I

    move-result p0

    return p0
.end method

.method public isSlotOperatorSupportedBySdk(I)Z
    .locals 1

    if-gez p1, :cond_0

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "provide unsupported slot id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimcardDataModel"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mOperatorSdkSupportedSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mOperatorSdkSupported:[Z

    aget-boolean p0, p0, p1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSlotSimInserted(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    if-eq v1, p0, :cond_1

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public isSlotSimReady(I)Z
    .locals 2

    .line 155
    iget v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mPhoneCount:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mMSimState:[I

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 156
    aget p0, p0, p1

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected parseOperatorCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "op code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimcardDataModel"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->setOperatorSdkSupportState(IZ)V

    .line 209
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->carrier_info_default_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eq v1, p1, :cond_5

    .line 211
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimOperatorCode:[Ljava/lang/String;

    aget-object v2, v1, p1

    .line 212
    aput-object v0, v1, p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 213
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 214
    iget-object p2, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v0}, Lcom/oneplus/security/utils/OPSNSUtils;->getSimName(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimOperatorCode:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->setOperatorSdkSupportState(IZ)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->setOperatorSdkSupportState(IZ)V

    :goto_0
    if-eqz v2, :cond_4

    .line 223
    iget-object p2, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimOperatorCode:[Ljava/lang/String;

    aget-object p2, p2, p1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 224
    iget-object p2, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListenersLock:[B

    monitor-enter p2

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/security/network/simcard/SimStateListener;

    if-eqz v1, :cond_2

    .line 227
    iget-object v2, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimOperatorCode:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, p1, v2}, Lcom/oneplus/security/network/simcard/SimStateListener;->onSimOperatorCodeChanged(ILjava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_3
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 232
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimOperatorCode:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_5
    return-object v0
.end method

.method public registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListenersLock:[B

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateChangeActionFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListenersLock:[B

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDataEnabled(Z)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method
