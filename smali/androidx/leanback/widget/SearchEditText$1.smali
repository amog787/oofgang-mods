.class Landroidx/leanback/widget/SearchEditText$1;
.super Ljava/lang/Object;
.source "SearchEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/SearchEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/SearchEditText;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/SearchEditText;)V
    .locals 0

    .line 61
    iput-object p1, p0, Landroidx/leanback/widget/SearchEditText$1;->this$0:Landroidx/leanback/widget/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/leanback/widget/SearchEditText$1;->this$0:Landroidx/leanback/widget/SearchEditText;

    iget-object p0, p0, Landroidx/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;->onKeyboardDismiss()V

    :cond_0
    return-void
.end method
