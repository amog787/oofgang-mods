.class Lcom/oneplus/settings/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/BaseActivity;->showWarningDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/BaseActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/oneplus/settings/BaseActivity$2;->this$0:Lcom/oneplus/settings/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/oneplus/settings/BaseActivity$2;->this$0:Lcom/oneplus/settings/BaseActivity;

    invoke-static {p1}, Lcom/oneplus/settings/BaseActivity;->access$000(Lcom/oneplus/settings/BaseActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/oneplus/settings/BaseActivity$2;->this$0:Lcom/oneplus/settings/BaseActivity;

    invoke-static {p0}, Lcom/oneplus/settings/BaseActivity;->access$000(Lcom/oneplus/settings/BaseActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
