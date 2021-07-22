.class Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;
.super Ljava/lang/Object;
.source "NativeOperatorDataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->requesetDataUsageAndNotify(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/operator/NativeOperatorDataModel;I)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iput p2, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iget v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->val$slotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->requesetDataUsage(IZ)Ljava/util/Map;

    move-result-object v0

    const-string v1, "total"

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v1, "used"

    .line 165
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 166
    iget-object v3, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iget v4, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->val$slotId:I

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->notifyMonthlyUsageAndTotalChanged(IJJ)V

    .line 168
    iget v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->val$slotId:I

    if-nez v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iput-boolean v2, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim1:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 171
    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$2;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iput-boolean v2, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim2:Z

    :cond_1
    :goto_0
    return-void
.end method
