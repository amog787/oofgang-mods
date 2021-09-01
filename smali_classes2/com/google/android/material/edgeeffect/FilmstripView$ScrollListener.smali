.class public abstract Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScrollListener"
.end annotation


# instance fields
.field isScrollStartedCalled:Z


# virtual methods
.method public abstract onCurrentItemChanged(II)V
.end method

.method public abstract onItemSelected(I)V
.end method

.method public abstract onOverScroll(Z)V
.end method

.method public abstract onScrollStarted()V
.end method

.method public abstract onScrollStopped()V
.end method
