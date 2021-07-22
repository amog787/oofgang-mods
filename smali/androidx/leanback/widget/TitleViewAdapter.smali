.class public abstract Landroidx/leanback/widget/TitleViewAdapter;
.super Ljava/lang/Object;
.source "TitleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/TitleViewAdapter$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSearchAffordanceView()Landroid/view/View;
.end method

.method public abstract setAnimationEnabled(Z)V
.end method

.method public abstract setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract updateComponentsVisibility(I)V
.end method
