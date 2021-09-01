.class Lcom/oneplus/settings/ui/OPListDialog$5;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPListDialog;->setVibrateLevelKey(Ljava/lang/String;)V
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

    .line 202
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$5;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 208
    sget v0, Lcom/android/settings/R$id;->item_1:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    sget v0, Lcom/android/settings/R$id;->item_2:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    sget v0, Lcom/android/settings/R$id;->item_3:I

    if-ne v0, p1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 214
    :cond_2
    sget v0, Lcom/android/settings/R$id;->item_4:I

    if-ne v0, p1, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 216
    :cond_3
    sget v0, Lcom/android/settings/R$id;->item_5:I

    if-ne v0, p1, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    .line 218
    :cond_4
    sget v0, Lcom/android/settings/R$id;->item_6:I

    if-ne v0, p1, :cond_5

    const/4 v1, 0x5

    .line 221
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$5;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {p1, v1}, Lcom/oneplus/settings/ui/OPListDialog;->access$202(Lcom/oneplus/settings/ui/OPListDialog;I)I

    .line 222
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$5;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 223
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog$5;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPListDialog;->access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;->OnDialogListItemClick(I)V

    :cond_6
    return-void
.end method
