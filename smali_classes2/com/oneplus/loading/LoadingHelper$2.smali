.class Lcom/oneplus/loading/LoadingHelper$2;
.super Ljava/lang/Object;
.source "LoadingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/loading/LoadingHelper;

.field final synthetic val$callback:Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/loading/LoadingHelper;Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oneplus/loading/LoadingHelper$2;->this$0:Lcom/oneplus/loading/LoadingHelper;

    iput-object p2, p0, Lcom/oneplus/loading/LoadingHelper$2;->val$callback:Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/oneplus/loading/LoadingHelper$2;->this$0:Lcom/oneplus/loading/LoadingHelper;

    iget-object p0, p0, Lcom/oneplus/loading/LoadingHelper$2;->val$callback:Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/oneplus/loading/LoadingHelper;->access$300(Lcom/oneplus/loading/LoadingHelper;Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;Z)V

    return-void
.end method
