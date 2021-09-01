.class Lcom/oneplus/settings/aboutphone/OPForumContributors$1;
.super Ljava/lang/Object;
.source "OPForumContributors.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aboutphone/OPForumContributors;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/OPForumContributors;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;->this$0:Lcom/oneplus/settings/aboutphone/OPForumContributors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;->this$0:Lcom/oneplus/settings/aboutphone/OPForumContributors;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->access$000(Lcom/oneplus/settings/aboutphone/OPForumContributors;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;->this$0:Lcom/oneplus/settings/aboutphone/OPForumContributors;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->access$000(Lcom/oneplus/settings/aboutphone/OPForumContributors;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->access$102(Lcom/oneplus/settings/aboutphone/OPForumContributors;F)F

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;->this$0:Lcom/oneplus/settings/aboutphone/OPForumContributors;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->access$200(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V

    return-void
.end method
