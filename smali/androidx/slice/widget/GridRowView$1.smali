.class Landroidx/slice/widget/GridRowView$1;
.super Ljava/lang/Object;
.source "GridRowView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/GridRowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/GridRowView;)V
    .locals 0

    .line 550
    iput-object p1, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 553
    iget-object v0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v1

    iput v1, v0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 554
    iget-object v0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 555
    iget-object v0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 556
    iget-object p0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 p0, 0x1

    return p0
.end method
