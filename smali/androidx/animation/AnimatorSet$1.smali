.class Landroidx/animation/AnimatorSet$1;
.super Landroidx/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroidx/animation/AnimatorSet;)V
    .locals 0

    .line 169
    iput-object p1, p0, Landroidx/animation/AnimatorSet$1;->this$0:Landroidx/animation/AnimatorSet;

    invoke-direct {p0}, Landroidx/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/animation/Animator;)V
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/animation/AnimatorSet$1;->this$0:Landroidx/animation/AnimatorSet;

    iget-object v0, v0, Landroidx/animation/AnimatorSet;->mNodeMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Landroidx/animation/AnimatorSet$1;->this$0:Landroidx/animation/AnimatorSet;

    iget-object p0, p0, Landroidx/animation/AnimatorSet;->mNodeMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/animation/AnimatorSet$Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/animation/AnimatorSet$Node;->mEnded:Z

    return-void

    .line 173
    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Error: animation ended is not in the node map"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
