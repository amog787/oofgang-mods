.class Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;
.super Ljava/lang/Object;
.source "NativeOperatorDataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->startOperatorAccountDayQueryThread(I)V
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

    .line 190
    iput-object p1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iput p2, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querying slotId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;->val$slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeOperatorDataModel"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    invoke-static {v0}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->access$000(Lcom/oneplus/security/network/operator/NativeOperatorDataModel;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;->val$slotId:I

    invoke-static {v0, v1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getAccountDay(Landroid/content/Context;I)I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;->this$0:Lcom/oneplus/security/network/operator/NativeOperatorDataModel;

    iget p0, p0, Lcom/oneplus/security/network/operator/NativeOperatorDataModel$3;->val$slotId:I

    invoke-virtual {v1, p0, v0}, Lcom/oneplus/security/network/operator/AbstractOperatorDataModel;->notifyAccountDayChanged(II)V

    return-void
.end method
