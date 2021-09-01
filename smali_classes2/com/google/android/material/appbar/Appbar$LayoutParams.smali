.class public Lcom/google/android/material/appbar/Appbar$LayoutParams;
.super Landroidx/appcompat/app/ActionBar$LayoutParams;
.source "Appbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/Appbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1612
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1605
    iput p1, p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    const p1, 0x800013

    .line 1613
    iput p1, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1608
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 1605
    iput p1, p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1643
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 1605
    iput p1, p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1636
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 1605
    iput v0, p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    .line 1639
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 0

    .line 1632
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    const/4 p1, 0x0

    .line 1605
    iput p1, p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/Appbar$LayoutParams;)V
    .locals 1

    .line 1626
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    .line 1605
    iput v0, p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    .line 1628
    iget p1, p1, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    iput p1, p0, Lcom/google/android/material/appbar/Appbar$LayoutParams;->mViewType:I

    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1647
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1648
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1649
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1650
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
