.class Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;
.super Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewEdgeEffectFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Lcom/google/android/material/edgeeffect/SpringRelativeLayout$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;-><init>(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)V

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

    .line 312
    invoke-super {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$100(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p0

    neg-float p0, p0

    invoke-direct {p1, p2, v0, p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1

    .line 307
    :cond_1
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->access$100(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)F

    move-result p0

    invoke-direct {p1, p2, v0, p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/google/android/material/edgeeffect/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1
.end method
