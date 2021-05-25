.class Lcom/android/server/ear/sis$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ear/sis;->cgv(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/ear/sis;


# direct methods
.method constructor <init>(Lcom/android/server/ear/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ear/sis$you;->zta:Lcom/android/server/ear/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ear/sis$you;->zta:Lcom/android/server/ear/sis;

    invoke-static {v0}, Lcom/android/server/ear/sis;->bvj(Lcom/android/server/ear/sis;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/ear/sis$you;->zta:Lcom/android/server/ear/sis;

    invoke-static {p0}, Lcom/android/server/ear/sis;->bvj(Lcom/android/server/ear/sis;)Landroid/view/View;

    move-result-object p0

    const v0, 0x50800f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Region;->set(IIII)Z

    :cond_0
    return-void
.end method
