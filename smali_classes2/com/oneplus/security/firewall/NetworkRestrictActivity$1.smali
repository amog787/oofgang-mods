.class Lcom/oneplus/security/firewall/NetworkRestrictActivity$1;
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

    .line 103
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
