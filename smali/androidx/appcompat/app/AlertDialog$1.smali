.class Landroidx/appcompat/app/AlertDialog$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertDialog;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 358
    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyBoardHide()V
    .locals 2

    .line 370
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Landroidx/appcompat/app/AlertDialog;->access$000(Landroidx/appcompat/app/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/app/AlertDialog;->access$002(Landroidx/appcompat/app/AlertDialog;Z)Z

    .line 372
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$style;->Oneplus_popup_bottom_edittext_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 373
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$drawable;->op_dialog_material_background_bottom:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method public keyBoardShow(I)V
    .locals 1

    .line 361
    iget-object p1, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1}, Landroidx/appcompat/app/AlertDialog;->access$000(Landroidx/appcompat/app/AlertDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 362
    iget-object p1, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertDialog;->access$002(Landroidx/appcompat/app/AlertDialog;Z)Z

    .line 363
    iget-object p1, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Landroidx/appcompat/R$style;->Oneplus_popup_bottom_edit_animation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 364
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$1;->this$0:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Landroidx/appcompat/R$drawable;->op_dialog_material_background_bottom_edited:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method
