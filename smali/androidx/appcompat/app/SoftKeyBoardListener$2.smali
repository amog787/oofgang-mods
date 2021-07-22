.class Landroidx/appcompat/app/SoftKeyBoardListener$2;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/SoftKeyBoardListener;->addLifeObServer(Landroid/app/Activity;)V
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

    .line 92
    iput-object p1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$2;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 95
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 96
    iget-object p1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$2;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-static {p1}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$000(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Landroidx/appcompat/app/SoftKeyBoardListener$2;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-static {p1}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$000(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener$2;->this$0:Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-static {p0}, Landroidx/appcompat/app/SoftKeyBoardListener;->access$300(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
