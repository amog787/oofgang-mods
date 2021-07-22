.class Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
.super Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewEdgeEffectFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;->this$0:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;

    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;)V
    .locals 0

    .line 709
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 720
    invoke-super {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    .line 718
    :cond_0
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;->this$0:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, -0x41666666    # -0.3f

    invoke-direct {p1, p0, p2, v0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;-><init>(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;Landroid/content/Context;F)V

    return-object p1

    .line 715
    :cond_1
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;->this$0:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p1, p0, p2, v0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;-><init>(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;Landroid/content/Context;F)V

    return-object p1
.end method
