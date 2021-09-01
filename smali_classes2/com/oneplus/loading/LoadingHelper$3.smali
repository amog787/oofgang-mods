.class Lcom/oneplus/loading/LoadingHelper$3;
.super Ljava/lang/Object;
.source "LoadingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/loading/LoadingHelper;->doFinish(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/loading/LoadingHelper;

.field final synthetic val$callback:Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;

.field final synthetic val$shown:Z


# direct methods
.method constructor <init>(Lcom/oneplus/loading/LoadingHelper;ZLcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/oneplus/loading/LoadingHelper$3;->this$0:Lcom/oneplus/loading/LoadingHelper;

    iput-boolean p2, p0, Lcom/oneplus/loading/LoadingHelper$3;->val$shown:Z

    iput-object p3, p0, Lcom/oneplus/loading/LoadingHelper$3;->val$callback:Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/oneplus/loading/LoadingHelper$3;->val$shown:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oneplus/loading/LoadingHelper$3;->this$0:Lcom/oneplus/loading/LoadingHelper;

    invoke-static {v0}, Lcom/oneplus/loading/LoadingHelper;->access$100(Lcom/oneplus/loading/LoadingHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/loading/LoadingHelper;->hideProgree(Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/oneplus/loading/LoadingHelper$3;->val$callback:Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 121
    invoke-interface {p0, v0}, Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;->finish(Z)V

    :cond_1
    return-void
.end method
