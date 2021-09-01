.class public Lcom/android/settings/network/ims/ImsQueryProvisioningStat;
.super Ljava/lang/Object;
.source "ImsQueryProvisioningStat.java"


# instance fields
.field private volatile mCapability:I

.field private volatile mSubId:I

.field private volatile mTech:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->mSubId:I

    .line 46
    iput p2, p0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->mCapability:I

    .line 47
    iput p3, p0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->mTech:I

    return-void
.end method


# virtual methods
.method public query()Z
    .locals 3

    .line 57
    :try_start_0
    iget v0, p0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->mSubId:I

    .line 58
    invoke-static {v0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->mCapability:I

    iget v2, p0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->mTech:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get Provisioning stat. subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/ims/ImsQueryProvisioningStat;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "QueryPrivisioningStat"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
