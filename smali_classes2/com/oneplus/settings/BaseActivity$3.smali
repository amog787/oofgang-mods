.class Lcom/oneplus/settings/BaseActivity$3;
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

    .line 118
    iput-object p1, p0, Lcom/oneplus/settings/BaseActivity$3;->this$0:Lcom/oneplus/settings/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oneplus/settings/BaseActivity$3;->this$0:Lcom/oneplus/settings/BaseActivity;

    iget-object p0, p0, Lcom/oneplus/settings/BaseActivity;->mOnPressListener:Lcom/oneplus/settings/OnPressListener;

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0}, Lcom/oneplus/settings/OnPressListener;->onCancelPressed()V

    :cond_0
    return-void
.end method
