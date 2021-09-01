.class Landroidx/animation/AnimatorSet$SeekState;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekState"
.end annotation


# instance fields
.field private mPlayTime:J

.field private mSeekingInReverse:Z

.field final synthetic this$0:Landroidx/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroidx/animation/AnimatorSet;)V
    .locals 2

    .line 1837
    iput-object p1, p0, Landroidx/animation/AnimatorSet$SeekState;->this$0:Landroidx/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1838
    iput-wide v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    const/4 p1, 0x0

    .line 1839
    iput-boolean p1, p0, Landroidx/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    return-void
.end method


# virtual methods
.method getPlayTime()J
    .locals 2

    .line 1869
    iget-wide v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    return-wide v0
.end method

.method getPlayTimeNormalized()J
    .locals 4

    .line 1876
    iget-object v0, p0, Landroidx/animation/AnimatorSet$SeekState;->this$0:Landroidx/animation/AnimatorSet;

    iget-boolean v1, v0, Landroidx/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_0

    .line 1877
    invoke-virtual {v0}, Landroidx/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/animation/AnimatorSet$SeekState;->this$0:Landroidx/animation/AnimatorSet;

    iget-wide v2, v2, Landroidx/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 1879
    :cond_0
    iget-wide v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    return-wide v0
.end method

.method isActive()Z
    .locals 4

    .line 1883
    iget-wide v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1841
    iput-wide v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    const/4 v0, 0x0

    .line 1842
    iput-boolean v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    return-void
.end method

.method updateSeekDirection(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1856
    iget-object v0, p0, Landroidx/animation/AnimatorSet$SeekState;->this$0:Landroidx/animation/AnimatorSet;

    invoke-virtual {v0}, Landroidx/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1857
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Cannot reverse infinite animator set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1860
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1861
    iget-boolean v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    if-eq p1, v0, :cond_2

    .line 1862
    iget-object v0, p0, Landroidx/animation/AnimatorSet$SeekState;->this$0:Landroidx/animation/AnimatorSet;

    invoke-virtual {v0}, Landroidx/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/animation/AnimatorSet$SeekState;->this$0:Landroidx/animation/AnimatorSet;

    iget-wide v2, v2, Landroidx/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/animation/AnimatorSet$SeekState;->mPlayTime:J

    .line 1863
    iput-boolean p1, p0, Landroidx/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    :cond_2
    return-void
.end method
