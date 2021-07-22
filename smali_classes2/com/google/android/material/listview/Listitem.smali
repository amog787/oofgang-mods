.class public abstract Lcom/google/android/material/listview/Listitem;
.super Landroid/view/ViewGroup;
.source "Listitem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract getActionButton()Landroid/widget/ImageView;
.end method

.method public abstract getIcon()Landroid/widget/ImageView;
.end method

.method public abstract getPrimaryText()Landroid/widget/TextView;
.end method

.method public abstract getSecondaryText()Landroid/widget/TextView;
.end method

.method public abstract getStamp()Landroid/widget/TextView;
.end method
