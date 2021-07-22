.class Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;
.super Ljava/lang/Object;
.source "OPLabFeatureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->initData(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Handler;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    iput-object p2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->access$200(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->access$300(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->access$102(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Ljava/util/List;)Ljava/util/List;

    .line 112
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->val$handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
