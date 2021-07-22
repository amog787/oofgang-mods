.class Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;
.super Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewEdgeEffectFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringListView2;


# direct methods
.method private constructor <init>(Lcom/google/android/material/edgeeffect/SpringListView2;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/edgeeffect/SpringListView2;Lcom/google/android/material/edgeeffect/SpringListView2$1;)V
    .locals 0

    .line 718
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;-><init>(Lcom/google/android/material/edgeeffect/SpringListView2;)V

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

    .line 729
    invoke-super {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    .line 727
    :cond_0
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {p2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$200(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result p0

    neg-float p0, p0

    invoke-direct {p1, p2, v0, p0}, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;-><init>(Lcom/google/android/material/edgeeffect/SpringListView2;Landroid/content/Context;F)V

    return-object p1

    .line 724
    :cond_1
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {p2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$200(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result p0

    invoke-direct {p1, p2, v0, p0}, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;-><init>(Lcom/google/android/material/edgeeffect/SpringListView2;Landroid/content/Context;F)V

    return-object p1
.end method
