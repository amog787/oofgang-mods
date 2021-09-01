.class Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$1;
.super Ljava/lang/Object;
.source "BottomActionbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1030
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2100(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomappbar/BottomActionbar;

    if-eqz p2, :cond_4

    .line 1033
    instance-of p3, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 1038
    :cond_0
    move-object p3, p1

    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1040
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    .line 1041
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    const/4 p5, 0x0

    .line 1045
    invoke-virtual {p2, p5}, Lcom/google/android/material/bottomappbar/BottomActionbar;->setFabDiameter(I)Z

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1054
    iget-object p5, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p5}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2300(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)I

    move-result p5

    if-nez p5, :cond_3

    .line 1057
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p5, p4

    div-int/lit8 p5, p5, 0x2

    .line 1061
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    .line 1062
    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2400(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/common/NavigationButtonUtils;->is3ButtonNavigationBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/google/android/material/R$dimen;->op_control_margin_screen_bottom1:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/google/android/material/R$dimen;->op_control_margin_screen_bottom3:I

    :goto_0
    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sub-int/2addr p0, p5

    .line 1068
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2500(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p4

    add-int/2addr p4, p0

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1069
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2600(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1070
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2700(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1071
    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1073
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2800(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 1075
    :cond_2
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2800(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_3
    :goto_1
    return-void

    .line 1034
    :cond_4
    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
