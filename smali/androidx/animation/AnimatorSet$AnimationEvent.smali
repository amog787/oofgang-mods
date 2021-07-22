.class Landroidx/animation/AnimatorSet$AnimationEvent;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationEvent"
.end annotation


# instance fields
.field final mEvent:I

.field final mNode:Landroidx/animation/AnimatorSet$Node;


# direct methods
.method constructor <init>(Landroidx/animation/AnimatorSet$Node;I)V
    .locals 0

    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    iput-object p1, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/animation/AnimatorSet$Node;

    .line 1815
    iput p2, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mEvent:I

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 5

    .line 1819
    iget v0, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_0

    .line 1820
    iget-object p0, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/animation/AnimatorSet$Node;

    iget-wide v0, p0, Landroidx/animation/AnimatorSet$Node;->mStartTime:J

    return-wide v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1822
    iget-object p0, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/animation/AnimatorSet$Node;

    iget-wide v0, p0, Landroidx/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/animation/AnimatorSet$Node;->mAnimation:Landroidx/animation/Animator;

    .line 1823
    invoke-virtual {p0}, Landroidx/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_0
    return-wide v2

    .line 1825
    :cond_2
    iget-object p0, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/animation/AnimatorSet$Node;

    iget-wide v0, p0, Landroidx/animation/AnimatorSet$Node;->mEndTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1831
    iget v0, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_0

    const-string v0, "start"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "delay ended"

    goto :goto_0

    :cond_1
    const-string v0, "end"

    .line 1833
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/animation/AnimatorSet$Node;

    iget-object p0, p0, Landroidx/animation/AnimatorSet$Node;->mAnimation:Landroidx/animation/Animator;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
