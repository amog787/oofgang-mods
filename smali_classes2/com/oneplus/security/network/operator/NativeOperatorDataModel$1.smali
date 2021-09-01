.class Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;
.super Ljava/lang/Object;
.source "NativeOperatorDataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->requesetPkgMonthlyUsageAndTotalInByte(I)V
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

    .line 109
    iput-object p1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iput p2, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 112
    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iget v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->val$slotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->requesetDataUsage(IZ)Ljava/util/Map;

    move-result-object v0

    const-string v1, "total"

    .line 113
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v3, "used"

    .line 114
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 115
    iget-object v4, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iget v5, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->val$slotId:I

    move-wide v6, v10

    move-wide v8, v12

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->notifyMonthlyUsageAndTotalChanged(IJJ)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iget v4, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->val$slotId:I

    invoke-virtual {v0, v4}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->requesetDataUsage(I)Ljava/util/Map;

    move-result-object v0

    .line 123
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 124
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v12

    if-nez v0, :cond_0

    cmp-long v0, v6, v10

    if-nez v0, :cond_0

    const-string v0, "NativeOperatorDataModel"

    const-string v1, "forceUpdate local datausage is not changed,no need to refresh ui."

    .line 126
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iget v5, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->val$slotId:I

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->notifyMonthlyUsageAndTotalChanged(IJJ)V

    .line 130
    :goto_0
    iget v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->val$slotId:I

    if-nez v0, :cond_1

    .line 131
    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iput-boolean v2, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim1:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 133
    iget-object p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$1;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iput-boolean v2, p0, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->isDoingQueryTaskSim2:Z

    :cond_2
    :goto_1
    return-void
.end method
