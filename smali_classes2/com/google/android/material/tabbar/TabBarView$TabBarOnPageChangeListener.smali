.class public Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabBarView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabbar/TabBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabBarOnPageChangeListener"
.end annotation


# instance fields
.field private mFabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private previousScrollState:I

.field private scrollState:I

.field private final tabBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/tabbar/TabBarView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/tabbar/TabBarView;

.field private visibleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabbar/TabBarView;Lcom/google/android/material/tabbar/TabBarView;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->visibleList:Ljava/util/ArrayList;

    .line 1096
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->tabBar:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDestory()V
    .locals 1

    const/4 v0, 0x0

    .line 1101
    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->visibleList:Ljava/util/ArrayList;

    .line 1102
    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mViewList:Ljava/util/List;

    .line 1103
    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1108
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->scrollState:I

    iput v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->previousScrollState:I

    .line 1109
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->scrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 1115
    iget-object p3, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->tabBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/tabbar/TabBarView;

    if-eqz p3, :cond_4

    .line 1117
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->scrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->previousScrollState:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 1119
    :goto_1
    iget v4, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->scrollState:I

    if-ne v4, v2, :cond_2

    iget v2, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->previousScrollState:I

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    .line 1121
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v2}, Lcom/google/android/material/tabbar/TabBarView;->access$100(Lcom/google/android/material/tabbar/TabBarView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1122
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/google/android/material/tabbar/TabBarView;->setScrollPosition(IFZZ)V

    .line 1123
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object p1, p1, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {p2}, Lcom/google/android/material/tabbar/TabBarView;->access$600(Lcom/google/android/material/tabbar/TabBarView;)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eq p1, p2, :cond_4

    .line 1124
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-static {p0}, Lcom/google/android/material/tabbar/TabBarView;->access$600(Lcom/google/android/material/tabbar/TabBarView;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 1132
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->tabBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabbar/TabBarView;

    if-eqz v0, :cond_6

    .line 1134
    invoke-virtual {v0}, Lcom/google/android/material/tabbar/TabBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 1136
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mViewList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1137
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/common/OPViewGroupUtils;->getAllChildViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mViewList:Ljava/util/List;

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    .line 1142
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    .line 1143
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1144
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mViewList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v3, :cond_2

    .line 1145
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mViewList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->visibleList:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1150
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1151
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 1152
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_4

    .line 1153
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScrollHideBoolean()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1154
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->onShow(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1158
    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabbar/TabBarView;->selectTab(I)V

    .line 1159
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1160
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {p0}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .locals 3

    .line 1166
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener$1;-><init>(Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    .line 1187
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1191
    iput v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->scrollState:I

    iput v0, p0, Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;->previousScrollState:I

    return-void
.end method
