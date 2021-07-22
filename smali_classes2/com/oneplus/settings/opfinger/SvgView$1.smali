.class Lcom/oneplus/settings/opfinger/SvgView$1;
.super Ljava/lang/Object;
.source "SvgView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/SvgView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/SvgView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/SvgView;II)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$w:I

    iput p3, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/SvgView;->access$100(Lcom/oneplus/settings/opfinger/SvgView;)Lcom/oneplus/settings/opfinger/SvgHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-static {v2}, Lcom/oneplus/settings/opfinger/SvgView;->access$000(Lcom/oneplus/settings/opfinger/SvgView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/opfinger/SvgHelper;->load(Landroid/content/Context;I)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/SvgView;->access$200(Lcom/oneplus/settings/opfinger/SvgView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-static {v2}, Lcom/oneplus/settings/opfinger/SvgView;->access$100(Lcom/oneplus/settings/opfinger/SvgView;)Lcom/oneplus/settings/opfinger/SvgHelper;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$w:I

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    .line 165
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$h:I

    iget-object v5, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    .line 166
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 164
    invoke-virtual {v2, v3, v4}, Lcom/oneplus/settings/opfinger/SvgHelper;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/opfinger/SvgView;->access$302(Lcom/oneplus/settings/opfinger/SvgView;Ljava/util/List;)Ljava/util/List;

    .line 167
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-static {p0}, Lcom/oneplus/settings/opfinger/SvgView;->access$400(Lcom/oneplus/settings/opfinger/SvgView;)V

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
