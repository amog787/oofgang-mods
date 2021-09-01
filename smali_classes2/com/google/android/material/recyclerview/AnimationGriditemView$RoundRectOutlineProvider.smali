.class Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "AnimationGriditemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/recyclerview/AnimationGriditemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundRectOutlineProvider"
.end annotation


# instance fields
.field private mRadius:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 188
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 189
    iput p1, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;->mRadius:I

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p0, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RoundRectOutlineProvider;->mRadius:I

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
