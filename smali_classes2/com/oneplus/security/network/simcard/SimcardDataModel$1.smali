.class Lcom/oneplus/security/network/simcard/SimcardDataModel$1;
.super Landroid/content/BroadcastReceiver;
.source "SimcardDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/network/simcard/SimcardDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/simcard/SimcardDataModel;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ss"

    .line 43
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    move v0, p1

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    invoke-static {v1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->access$000(Lcom/oneplus/security/network/simcard/SimcardDataModel;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    iget-object v1, v1, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mMSimState:[I

    aget v2, v1, p1

    .line 48
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    aput v3, v1, p1

    .line 49
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    iget-object v1, v1, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mMSimState:[I

    aget v1, v1, p1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    iget-object v2, v2, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mMSimState:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimcardDataModel"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    invoke-virtual {v1, p1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getOperatorCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->parseOperatorCode(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    iget-object v1, v1, Lcom/oneplus/security/network/simcard/SimcardDataModel;->mMSimState:[I

    aget v1, v1, p1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    const-string v1, "simStatus==5"

    .line 55
    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    invoke-static {v1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->access$100(Lcom/oneplus/security/network/simcard/SimcardDataModel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/oneplus/security/SecureService;->startServiceForDataUsage(Landroid/content/Context;I)V

    .line 57
    iget-object v1, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    invoke-static {v1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->access$100(Lcom/oneplus/security/network/simcard/SimcardDataModel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->startSimStatusService(Landroid/content/Context;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 61
    iget-object p0, p0, Lcom/oneplus/security/network/simcard/SimcardDataModel$1;->this$0:Lcom/oneplus/security/network/simcard/SimcardDataModel;

    invoke-static {p0, p2}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->access$200(Lcom/oneplus/security/network/simcard/SimcardDataModel;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
