.class Lcom/google/android/material/card/MaterialCardView$1;
.super Landroid/view/ViewOutlineProvider;
.source "MaterialCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/card/MaterialCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method constructor <init>(Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardView$1;->this$0:Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    const v0, 0x3e99999a    # 0.3f

    .line 172
    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView$1;->this$0:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {p0}, Lcom/google/android/material/card/MaterialCardView;->access$000(Lcom/google/android/material/card/MaterialCardView;)F

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
