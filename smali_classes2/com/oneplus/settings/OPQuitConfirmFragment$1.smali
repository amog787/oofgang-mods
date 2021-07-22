.class Lcom/oneplus/settings/OPQuitConfirmFragment$1;
.super Ljava/lang/Object;
.source "OPQuitConfirmFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPQuitConfirmFragment;->showWarningDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$1;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$1;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    invoke-static {p1}, Lcom/oneplus/settings/OPQuitConfirmFragment;->access$000(Lcom/oneplus/settings/OPQuitConfirmFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$1;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    invoke-static {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->access$000(Lcom/oneplus/settings/OPQuitConfirmFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
