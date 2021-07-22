.class Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;
.super Ljava/lang/Object;
.source "OPWLBBannerPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->setClickBgHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;->this$0:Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLlContent.getHeight():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;->this$0:Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->access$000(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMemberPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;->this$0:Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;

    invoke-static {v0}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->access$100(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;->this$0:Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->access$000(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;->this$0:Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->access$100(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference$1;->this$0:Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;

    invoke-static {v0}, Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;->access$000(Lcom/oneplus/settings/worklifebalance/OPWLBBannerPreference;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
