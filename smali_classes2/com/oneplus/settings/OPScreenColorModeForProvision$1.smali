.class Lcom/oneplus/settings/OPScreenColorModeForProvision$1;
.super Ljava/lang/Object;
.source "OPScreenColorModeForProvision.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenColorModeForProvision;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenColorModeForProvision;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 34
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.provision"

    const-string v2, "com.oneplus.provision.FontSetActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForProvision;

    sget p1, Lcom/android/settings/R$anim;->op_slide_in:I

    sget v0, Lcom/android/settings/R$anim;->op_slide_out:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
