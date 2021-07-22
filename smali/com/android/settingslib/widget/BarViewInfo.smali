.class public Lcom/android/settingslib/widget/BarViewInfo;
.super Ljava/lang/Object;
.source "BarViewInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/widget/BarViewInfo;",
        ">;"
    }
.end annotation


# virtual methods
.method abstract getClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method abstract getHeight()I
.end method

.method abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method abstract getNormalizedHeight()I
.end method

.method abstract getSummary()Ljava/lang/CharSequence;
.end method

.method abstract getTitle()Ljava/lang/CharSequence;
.end method

.method abstract setNormalizedHeight(I)V
.end method
