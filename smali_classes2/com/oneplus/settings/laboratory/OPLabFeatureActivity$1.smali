.class Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;
.super Landroid/os/Handler;
.source "OPLabFeatureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Looper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-static {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->setData(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
