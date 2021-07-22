.class Lcom/oneplus/settings/OPQuitConfirmFragment$2;
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

    .line 48
    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$2;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment$2;->this$0:Lcom/oneplus/settings/OPQuitConfirmFragment;

    iget-object p0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mOnPressListener:Lcom/oneplus/settings/OnPressListener;

    if-eqz p0, :cond_0

    .line 53
    invoke-interface {p0}, Lcom/oneplus/settings/OnPressListener;->onCancelPressed()V

    :cond_0
    return-void
.end method
