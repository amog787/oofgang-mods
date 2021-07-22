.class Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;
.super Ljava/lang/Object;
.source "UserPLMNListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/UserPLMNListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UPLMNInfoWithEf"
.end annotation


# instance fields
.field private mNetworkMode:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPriority:I


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/UserPLMNListActivity;Ljava/lang/String;II)V
    .locals 0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    .line 405
    iput p3, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mNetworkMode:I

    .line 406
    iput p4, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mPriority:I

    return-void
.end method


# virtual methods
.method public getNetworMode()I
    .locals 0

    .line 387
    iget p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mNetworkMode:I

    return p0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mPriority:I

    return p0
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPLMNInfoWithEf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mNetworkMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/UserPLMNListActivity$UPLMNInfoWithEf;->mPriority:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
