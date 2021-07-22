.class Landroidx/appcompat/app/SoftKeyBoardListener$1;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/SoftKeyBoardListener;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/SoftKeyBoardListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 51
    iget-object v1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-static {v1}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$000(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 52
    iget-object v1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    iget-boolean v2, v1, Landroidx/appcompat/app/SoftKeyBoardListener;->isShow:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$100(Landroidx/appcompat/app/SoftKeyBoardListener;)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    .line 53
    iget-object v1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/SoftKeyBoardListener;->isShow:Z

    .line 54
    invoke-static {v1}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$200(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-static {v1}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$200(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-static {p0}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$100(Landroidx/appcompat/app/SoftKeyBoardListener;)I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-interface {v1, p0}, Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardShow(I)V

    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    iget-boolean v2, v1, Landroidx/appcompat/app/SoftKeyBoardListener;->isShow:Z

    if-eqz v2, :cond_2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$100(Landroidx/appcompat/app/SoftKeyBoardListener;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 61
    iget-object v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/app/SoftKeyBoardListener;->isShow:Z

    .line 62
    invoke-static {v0}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$200(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener$1;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-static {p0}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$200(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object p0

    invoke-interface {p0}, Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide()V

    :cond_2
    return-void
.end method
