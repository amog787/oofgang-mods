.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;
.super Landroid/os/Handler;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 106
    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$100(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$100(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    .line 109
    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setData(Ljava/util/List;)V

    .line 111
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    sget v0, Lcom/android/settings/R$id;->op_empty_list_tips_view:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/emptyview/EmptyPageView;

    .line 112
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_app_list_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->op_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
