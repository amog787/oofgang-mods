.class public Lcom/google/android/material/bottomappbar/FloatingActionBar;
.super Landroid/widget/FrameLayout;
.source "FloatingActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/FloatingActionBar$FloatingToolBar;
    }
.end annotation


# instance fields
.field private mFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private mScrollHide:Z

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mScrollHide:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/FloatingActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mScrollHide:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/FloatingActionBar;->init(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/FloatingActionBar;->initArray(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 25
    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mScrollHide:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/FloatingActionBar;->init(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/FloatingActionBar;->initArray(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 50
    sget v0, Lcom/google/android/material/R$layout;->op_floating_action_bar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget p1, Lcom/google/android/material/R$id;->tool_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 52
    sget p1, Lcom/google/android/material/R$id;->floating_action_tool_button:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 53
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initArray(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 57
    sget-object v2, Lcom/google/android/material/R$styleable;->FloatingActionBar:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/google/android/material/R$styleable;->FloatingActionBar_actionbarScrollHide:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomappbar/FloatingActionBar;->setScrollHide(Z)V

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getScrollHideBoolean()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mScrollHide:Z

    return p0
.end method

.method public getToolBar()Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 81
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 86
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 88
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 89
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    return-void
.end method

.method public setScrollHide(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mScrollHide:Z

    .line 70
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/FloatingActionBar;->mFloatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScrollHide(Z)V

    :cond_0
    return-void
.end method
