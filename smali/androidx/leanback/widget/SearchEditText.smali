.class public Landroidx/leanback/widget/SearchEditText;
.super Landroidx/leanback/widget/StreamingTextView;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;
    }
.end annotation


# instance fields
.field mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Landroidx/leanback/widget/SearchEditText;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    sget v0, Landroidx/leanback/R$style;->TextAppearance_Leanback_SearchTextEdit:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/StreamingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 56
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Landroidx/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroidx/leanback/widget/SearchEditText$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/SearchEditText$1;-><init>(Landroidx/leanback/widget/SearchEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroidx/leanback/widget/StreamingTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public bridge synthetic setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroidx/leanback/widget/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnKeyboardDismissListener(Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Landroidx/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    return-void
.end method
