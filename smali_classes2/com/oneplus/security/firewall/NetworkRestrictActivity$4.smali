.class Lcom/oneplus/security/firewall/NetworkRestrictActivity$4;
.super Ljava/lang/Object;
.source "NetworkRestrictActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/firewall/NetworkRestrictActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$4;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 167
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$4;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$300(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$4;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    sget v1, Lcom/android/settings/R$drawable;->ic_up:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$4;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method
