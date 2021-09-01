.class Lcom/oneplus/settings/ui/OPListDialog$3;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 124
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog$3;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;->OnDialogListCancelClick()V

    :cond_0
    return-void
.end method
