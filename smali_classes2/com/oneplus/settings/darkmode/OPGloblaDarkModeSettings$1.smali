.class Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;
.super Landroid/os/Handler;
.source "OPGloblaDarkModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Landroid/os/Looper;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$000(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    .line 96
    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$100(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 98
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$100(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$300(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$000(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->setData(Ljava/util/List;)V

    .line 105
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    sget v0, Lcom/android/settings/R$id;->op_empty_list_tips_view:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/emptyview/EmptyPageView;

    .line 106
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->oneplus_app_list_empty:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->op_empty:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$400(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
