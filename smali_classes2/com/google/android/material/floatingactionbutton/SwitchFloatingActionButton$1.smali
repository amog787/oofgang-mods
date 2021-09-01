.class Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "SwitchFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    const p0, 0x3f666666    # 0.9f

    .line 93
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p0, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
