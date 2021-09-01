.class Lcom/android/settings/panel/PanelFragment$2;
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

    .line 125
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$2;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$2;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$100(Lcom/android/settings/panel/PanelFragment;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$2;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$200(Lcom/android/settings/panel/PanelFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$2;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$200(Lcom/android/settings/panel/PanelFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
