.class Lcom/android/settings/panel/PanelFragment$1;
.super Ljava/lang/Object;
.source "PanelFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/panel/PanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget-object v0, v0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v1}, Lcom/android/settings/panel/PanelFragment;->access$000(Lcom/android/settings/panel/PanelFragment;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget-object v0, v0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v1}, Lcom/android/settings/panel/PanelFragment;->access$000(Lcom/android/settings/panel/PanelFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$1;->this$0:Lcom/android/settings/panel/PanelFragment;

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
