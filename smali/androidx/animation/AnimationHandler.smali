.class Landroidx/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroidx/animation/AnimationHandler$FrameCallbackProvider14;,
        Landroidx/animation/AnimationHandler$FrameCallbackProvider16;,
        Landroidx/animation/AnimationHandler$AnimationCallbackData;,
        Landroidx/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static mAnimationCallbackData:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/animation/AnimationHandler$AnimationCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static sAnimationHandler:Landroidx/animation/AnimationHandler;

.field private static sTestHandler:Landroidx/animation/AnimationHandler;


# instance fields
.field private final mProvider:Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/animation/AnimationHandler;->mHandler:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 76
    sput-object v0, Landroidx/animation/AnimationHandler;->sAnimationHandler:Landroidx/animation/AnimationHandler;

    .line 77
    sput-object v0, Landroidx/animation/AnimationHandler;->sTestHandler:Landroidx/animation/AnimationHandler;

    .line 78
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    .line 83
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 84
    new-instance p1, Landroidx/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-direct {p1, p0}, Landroidx/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Landroidx/animation/AnimationHandler;)V

    iput-object p1, p0, Landroidx/animation/AnimationHandler;->mProvider:Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;

    invoke-direct {p1, p0}, Landroidx/animation/AnimationHandler$FrameCallbackProvider14;-><init>(Landroidx/animation/AnimationHandler;)V

    iput-object p1, p0, Landroidx/animation/AnimationHandler;->mProvider:Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_0

    .line 89
    :cond_1
    iput-object p1, p0, Landroidx/animation/AnimationHandler;->mProvider:Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .line 41
    sget-object v0, Landroidx/animation/AnimationHandler;->mHandler:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private cleanUpList()V
    .locals 2

    .line 226
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->isListDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 228
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 229
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0}, Landroidx/animation/AnimationHandler;->setListDirty(Z)V

    :cond_2
    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 5

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 195
    :goto_0
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 196
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Landroidx/animation/AnimationHandler;->isCallbackDue(Landroidx/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    invoke-interface {v3, p1, p2}, Landroidx/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method private getAnimationCallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation

    .line 126
    sget-object p0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    if-nez p0, :cond_0

    .line 128
    new-instance p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {p0}, Landroidx/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    .line 129
    sget-object v0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 132
    :cond_0
    iget-object p0, p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 116
    sget-object p0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    if-nez p0, :cond_0

    .line 118
    new-instance p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {p0}, Landroidx/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    .line 119
    sget-object v0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 122
    :cond_0
    iget-object p0, p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method public static getInstance()Landroidx/animation/AnimationHandler;
    .locals 2

    .line 94
    sget-object v0, Landroidx/animation/AnimationHandler;->sTestHandler:Landroidx/animation/AnimationHandler;

    if-eqz v0, :cond_0

    return-object v0

    .line 97
    :cond_0
    sget-object v0, Landroidx/animation/AnimationHandler;->sAnimationHandler:Landroidx/animation/AnimationHandler;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Landroidx/animation/AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/animation/AnimationHandler;-><init>(Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    sput-object v0, Landroidx/animation/AnimationHandler;->sAnimationHandler:Landroidx/animation/AnimationHandler;

    .line 100
    :cond_1
    sget-object v0, Landroidx/animation/AnimationHandler;->sAnimationHandler:Landroidx/animation/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Landroidx/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4

    .line 214
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    .line 219
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isListDirty()Z
    .locals 1

    .line 136
    sget-object p0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    if-nez p0, :cond_0

    .line 138
    new-instance p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {p0}, Landroidx/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    .line 139
    sget-object v0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 142
    :cond_0
    iget-boolean p0, p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;->mListDirty:Z

    return p0
.end method

.method private setListDirty(Z)V
    .locals 1

    .line 146
    sget-object p0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    if-nez p0, :cond_0

    .line 148
    new-instance p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {p0}, Landroidx/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    .line 149
    sget-object v0, Landroidx/animation/AnimationHandler;->mAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 152
    :cond_0
    iput-boolean p1, p0, Landroidx/animation/AnimationHandler$AnimationCallbackData;->mListDirty:Z

    return-void
.end method


# virtual methods
.method addAnimationFrameCallback(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Landroidx/animation/AnimationHandler;->mProvider:Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {v0}, Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 162
    :cond_0
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    iget-object p0, p0, Landroidx/animation/AnimationHandler;->mProvider:Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {p0, p1}, Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;->onNewCallbackAdded(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method autoCancelBasedOn(Landroidx/animation/ObjectAnimator;)V
    .locals 2

    .line 182
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 183
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v1, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/animation/ObjectAnimator;->shouldAutoCancel(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/animation/Animator;

    invoke-virtual {v1}, Landroidx/animation/Animator;->cancel()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onAnimationFrame(J)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/animation/AnimationHandler;->doAnimationFrame(J)V

    .line 60
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 61
    iget-object p0, p0, Landroidx/animation/AnimationHandler;->mProvider:Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {p0}, Landroidx/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_0
    return-void
.end method

.method public removeCallback(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 176
    invoke-direct {p0}, Landroidx/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 177
    invoke-direct {p0, p1}, Landroidx/animation/AnimationHandler;->setListDirty(Z)V

    :cond_0
    return-void
.end method
