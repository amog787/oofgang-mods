.class public Landroidx/appcompat/app/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    }
.end annotation


# instance fields
.field isShow:Z

.field private listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private onSoftKeyBoardChangeListener:Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field private rootView:Landroid/view/View;

.field private screenBottom:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->isShow:Z

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->isShow:Z

    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->screenBottom:I

    .line 44
    new-instance v0, Landroidx/appcompat/app/SoftKeyBoardListener$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/SoftKeyBoardListener$1;-><init>(Landroidx/appcompat/app/SoftKeyBoardListener;)V

    iput-object v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 71
    iget-object v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/SoftKeyBoardListener;->addLifeObServer(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/appcompat/app/SoftKeyBoardListener;)I
    .locals 0

    .line 22
    iget p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->screenBottom:I

    return p0
.end method

.method static synthetic access$200(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 22
    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static setListener(Landroid/app/Activity;Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 1

    .line 83
    new-instance v0, Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V

    .line 85
    invoke-direct {v0, p1}, Landroidx/appcompat/app/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    return-void
.end method

.method private setOnSoftKeyBoardChangeListener(Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-void
.end method


# virtual methods
.method public addLifeObServer(Landroid/app/Activity;)V
    .locals 1

    .line 90
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 92
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/app/SoftKeyBoardListener$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/SoftKeyBoardListener$2;-><init>(Landroidx/appcompat/app/SoftKeyBoardListener;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
