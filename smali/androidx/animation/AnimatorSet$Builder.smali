.class public Landroidx/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Landroidx/animation/AnimatorSet$Node;

.field final synthetic this$0:Landroidx/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroidx/animation/AnimatorSet;Landroidx/animation/Animator;)V
    .locals 1

    .line 1954
    iput-object p1, p0, Landroidx/animation/AnimatorSet$Builder;->this$0:Landroidx/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1955
    iput-boolean v0, p1, Landroidx/animation/AnimatorSet;->mDependencyDirty:Z

    .line 1956
    invoke-virtual {p1, p2}, Landroidx/animation/AnimatorSet;->getNodeForAnimation(Landroidx/animation/Animator;)Landroidx/animation/AnimatorSet$Node;

    move-result-object p1

    iput-object p1, p0, Landroidx/animation/AnimatorSet$Builder;->mCurrentNode:Landroidx/animation/AnimatorSet$Node;

    return-void
.end method


# virtual methods
.method public with(Landroidx/animation/Animator;)Landroidx/animation/AnimatorSet$Builder;
    .locals 1

    .line 1968
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Builder;->this$0:Landroidx/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroidx/animation/AnimatorSet;->getNodeForAnimation(Landroidx/animation/Animator;)Landroidx/animation/AnimatorSet$Node;

    move-result-object p1

    .line 1969
    iget-object v0, p0, Landroidx/animation/AnimatorSet$Builder;->mCurrentNode:Landroidx/animation/AnimatorSet$Node;

    invoke-virtual {v0, p1}, Landroidx/animation/AnimatorSet$Node;->addSibling(Landroidx/animation/AnimatorSet$Node;)V

    return-object p0
.end method
