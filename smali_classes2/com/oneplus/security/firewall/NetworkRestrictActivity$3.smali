.class Lcom/oneplus/security/firewall/NetworkRestrictActivity$3;
.super Ljava/lang/Object;
.source "NetworkRestrictActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnDismissListener;


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

    .line 157
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$3;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$3;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$300(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$3;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    sget v0, Lcom/android/settings/R$drawable;->ic_down:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
