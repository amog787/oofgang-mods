.class Lcom/oneplus/settings/ui/OPTimerDialog$1;
.super Ljava/lang/Object;
.source "OPTimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPTimerDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPTimerDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$000(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
