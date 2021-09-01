.class Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;
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

    .line 1082
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1094
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2100(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomappbar/BottomActionbar;

    if-eqz p2, :cond_5

    .line 1097
    instance-of p3, p1, Landroid/widget/Button;

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 1102
    :cond_0
    move-object p3, p1

    check-cast p3, Landroid/widget/Button;

    .line 1103
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2400(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    .line 1104
    iget p4, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 p5, 0x208

    if-lt p4, p5, :cond_1

    .line 1105
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2400(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/google/android/material/R$dimen;->max_bottomappbar_width:I

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2400(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/google/android/material/R$dimen;->max_bottomappbar_width_normal:I

    :goto_0
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 1107
    invoke-virtual {p3, p4}, Landroid/widget/Button;->setMaxWidth(I)V

    const/4 p4, 0x2

    .line 1108
    invoke-virtual {p3, p4}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1109
    sget-object p5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, p5}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1112
    iget-object p5, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p5}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p3}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p6

    invoke-virtual {p3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p7

    const/4 p8, 0x0

    invoke-virtual {p5, p8, p8, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1113
    iget-object p5, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p5}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    .line 1117
    invoke-virtual {p2, p8}, Lcom/google/android/material/bottomappbar/BottomActionbar;->setFabDiameter(I)Z

    .line 1122
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1126
    iget-object p6, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    invoke-static {p6}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2300(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)I

    move-result p6

    if-nez p6, :cond_4

    .line 1129
    invoke-virtual {p3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p6

    sub-int/2addr p6, p5

    div-int/2addr p6, p4

    .line 1131
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;

    .line 1132
    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;->access$2400(Lcom/google/android/material/bottomappbar/BottomActionbar$Behavior;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/common/NavigationButtonUtils;->is3ButtonNavigationBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/google/android/material/R$dimen;->op_control_margin_screen_bottom2:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/google/android/material/R$dimen;->op_control_margin_screen_bottom3:I

    :goto_1
    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sub-int/2addr p0, p6

    .line 1138
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2500(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p4

    add-int/2addr p4, p0

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1139
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2600(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1140
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2700(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1141
    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1143
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2800(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 1145
    :cond_3
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$2800(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_4
    :goto_2
    return-void

    .line 1098
    :cond_5
    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
