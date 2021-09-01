.class public Lcom/google/android/material/emptyview/EmptyImageView;
.super Landroid/widget/ImageView;
.source "EmptyImageView.java"


# instance fields
.field private isSetGoneFromUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/material/emptyview/EmptyImageView;->isSetGoneFromUser:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/material/emptyview/EmptyImageView;->isSetGoneFromUser:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/material/emptyview/EmptyImageView;->isSetGoneFromUser:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/material/emptyview/EmptyImageView;->isSetGoneFromUser:Z

    return-void
.end method


# virtual methods
.method public isSetGoneFromUser()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/google/android/material/emptyview/EmptyImageView;->isSetGoneFromUser:Z

    return p0
.end method

.method public setHideForNoSpace()V
    .locals 1

    const/16 v0, 0x8

    .line 36
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/material/emptyview/EmptyImageView;->isSetGoneFromUser:Z

    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
