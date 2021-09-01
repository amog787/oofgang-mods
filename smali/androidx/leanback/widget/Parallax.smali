.class public abstract Landroidx/leanback/widget/Parallax;
.super Ljava/lang/Object;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Landroid/util/Property;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatValues:[F

.field final mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation
.end field

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    .line 405
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 407
    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    new-array v1, v0, [F

    .line 408
    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final getFloatPropertyValue(I)F
    .locals 0

    .line 539
    iget-object p0, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    aget p0, p0, p1

    return p0
.end method

.method public updateValues()V
    .locals 2

    const/4 v0, 0x0

    .line 577
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 578
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ParallaxEffect;

    invoke-virtual {v1, p0}, Landroidx/leanback/widget/ParallaxEffect;->performMapping(Landroidx/leanback/widget/Parallax;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final verifyFloatProperties()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 513
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v2

    const/4 v3, 0x1

    move v4, v3

    .line 514
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 515
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v5

    cmpg-float v6, v5, v2

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-ltz v6, :cond_3

    const v6, -0x800001

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 523
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-array v5, v8, [Ljava/lang/Object;

    add-int/lit8 v6, v4, -0x1

    .line 525
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v0

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 526
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object p0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Property;

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v7

    const-string p0, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    .line 523
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    .line 517
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-array v5, v8, [Ljava/lang/Object;

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    sub-int/2addr v4, v3

    .line 520
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object p0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Property;

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v7

    const-string p0, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    .line 517
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-void
.end method
