.class Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffectFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 183
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, -0x41666666    # -0.3f

    invoke-direct {p1, p0, p2, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1

    .line 178
    :cond_1
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p1, p0, p2, v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1
.end method
