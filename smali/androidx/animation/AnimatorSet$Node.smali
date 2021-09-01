.class Landroidx/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field mAnimation:Landroidx/animation/Animator;

.field mChildNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mEndTime:J

.field mEnded:Z

.field mLatestParent:Landroidx/animation/AnimatorSet$Node;

.field mParents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mParentsAdded:Z

.field mSiblings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J

.field mTotalDuration:J


# direct methods
.method constructor <init>(Landroidx/animation/Animator;)V
    .locals 2

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1692
    iput-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1699
    iput-boolean v1, p0, Landroidx/animation/AnimatorSet$Node;->mEnded:Z

    .line 1717
    iput-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mLatestParent:Landroidx/animation/AnimatorSet$Node;

    .line 1719
    iput-boolean v1, p0, Landroidx/animation/AnimatorSet$Node;->mParentsAdded:Z

    const-wide/16 v0, 0x0

    .line 1720
    iput-wide v0, p0, Landroidx/animation/AnimatorSet$Node;->mStartTime:J

    .line 1721
    iput-wide v0, p0, Landroidx/animation/AnimatorSet$Node;->mEndTime:J

    .line 1722
    iput-wide v0, p0, Landroidx/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 1732
    iput-object p1, p0, Landroidx/animation/AnimatorSet$Node;->mAnimation:Landroidx/animation/Animator;

    return-void
.end method


# virtual methods
.method addChild(Landroidx/animation/AnimatorSet$Node;)V
    .locals 1

    .line 1757
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1760
    :cond_0
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1761
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    invoke-virtual {p1, p0}, Landroidx/animation/AnimatorSet$Node;->addParent(Landroidx/animation/AnimatorSet$Node;)V

    :cond_1
    return-void
.end method

.method public addParent(Landroidx/animation/AnimatorSet$Node;)V
    .locals 1

    .line 1777
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 1780
    :cond_0
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1781
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-virtual {p1, p0}, Landroidx/animation/AnimatorSet$Node;->addChild(Landroidx/animation/AnimatorSet$Node;)V

    :cond_1
    return-void
.end method

.method public addParents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1790
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1792
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/animation/AnimatorSet$Node;

    invoke-virtual {p0, v2}, Landroidx/animation/AnimatorSet$Node;->addParent(Landroidx/animation/AnimatorSet$Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addSibling(Landroidx/animation/AnimatorSet$Node;)V
    .locals 1

    .line 1767
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 1770
    :cond_0
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1771
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1772
    invoke-virtual {p1, p0}, Landroidx/animation/AnimatorSet$Node;->addSibling(Landroidx/animation/AnimatorSet$Node;)V

    :cond_1
    return-void
.end method

.method public clone()Landroidx/animation/AnimatorSet$Node;
    .locals 3

    .line 1738
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/AnimatorSet$Node;

    .line 1739
    iget-object v1, p0, Landroidx/animation/AnimatorSet$Node;->mAnimation:Landroidx/animation/Animator;

    invoke-virtual {v1}, Landroidx/animation/Animator;->clone()Landroidx/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Landroidx/animation/AnimatorSet$Node;->mAnimation:Landroidx/animation/Animator;

    .line 1740
    iget-object v1, p0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1741
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1743
    :cond_0
    iget-object v1, p0, Landroidx/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1744
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 1746
    :cond_1
    iget-object v1, p0, Landroidx/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1747
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    :cond_2
    const/4 p0, 0x0

    .line 1749
    iput-boolean p0, v0, Landroidx/animation/AnimatorSet$Node;->mEnded:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1752
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1685
    invoke-virtual {p0}, Landroidx/animation/AnimatorSet$Node;->clone()Landroidx/animation/AnimatorSet$Node;

    move-result-object p0

    return-object p0
.end method
