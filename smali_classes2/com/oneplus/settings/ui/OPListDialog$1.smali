.class Lcom/oneplus/settings/ui/OPListDialog$1;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPListDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPListDialog;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$1;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPListDialog$1;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog$1;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;->OnDialogListCancelClick()V

    .line 120
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
