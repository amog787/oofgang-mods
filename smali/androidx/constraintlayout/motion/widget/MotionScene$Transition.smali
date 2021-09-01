.class public Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;
    }
.end annotation


# instance fields
.field private mAutoTransition:I

.field private mConstraintSetEnd:I

.field private mConstraintSetStart:I

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisable:Z

.field private mDuration:I

.field private mId:I

.field private mIsAbstract:Z

.field private mKeyFramesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/KeyFrames;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutDuringTransition:I

.field private final mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field private mOnClicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation
.end field

.field private mPathMotionArc:I

.field private mStagger:F

.field private mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 414
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    const/4 v1, 0x0

    .line 415
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 416
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 417
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 418
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    const/4 v2, 0x0

    .line 419
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 420
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    const/16 v3, 0x190

    .line 421
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    const/4 v3, 0x0

    .line 422
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 425
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 427
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 435
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 743
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$900(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 744
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$1000(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 745
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 746
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->fillFromAttributeList(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 4

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 414
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    const/4 v1, 0x0

    .line 415
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 416
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 417
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 418
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    const/4 v2, 0x0

    .line 419
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 420
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    const/16 v3, 0x190

    .line 421
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    const/4 v3, 0x0

    .line 422
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 425
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 427
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 435
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 707
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p2, :cond_0

    .line 709
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 710
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 711
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 712
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 713
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 714
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 715
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 716
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    return p0
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    .locals 0

    .line 413
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    return p1
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    return p0
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    .locals 0

    .line 413
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z
    .locals 0

    .line 413
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    return p0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;
    .locals 0

    .line 413
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    return p0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/lang/String;
    .locals 0

    .line 413
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    return p0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    return p0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    return p0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)F
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    return p0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;
    .locals 0

    .line 413
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/TouchResponse;)Landroidx/constraintlayout/motion/widget/TouchResponse;
    .locals 0

    .line 413
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    return p0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;
    .locals 0

    .line 413
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z
    .locals 0

    .line 413
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    return p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 413
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;
    .locals 0

    .line 413
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    return-object p0
.end method

.method private fill(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 8

    .line 756
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_d

    .line 758
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 759
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetEnd:I

    const-string v7, "layout"

    if-ne v5, v6, :cond_0

    .line 760
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 761
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 763
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 764
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 765
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$1100(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 771
    :cond_0
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_1

    .line 772
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 773
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 775
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 776
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 777
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$1100(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 779
    :cond_1
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_5

    .line 780
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 782
    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v3, :cond_2

    .line 783
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    if-eq v3, v4, :cond_c

    .line 785
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v6, v3, :cond_4

    .line 788
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    const-string v6, "/"

    .line 789
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 790
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 791
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_1

    .line 793
    :cond_3
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_1

    .line 796
    :cond_4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_1

    .line 799
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_duration:I

    if-ne v5, v3, :cond_6

    .line 800
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    goto :goto_1

    .line 801
    :cond_6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_staggered:I

    if-ne v5, v3, :cond_7

    .line 802
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    goto :goto_1

    .line 803
    :cond_7
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_autoTransition:I

    if-ne v5, v3, :cond_8

    .line 804
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    goto :goto_1

    .line 805
    :cond_8
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_android_id:I

    if-ne v5, v3, :cond_9

    .line 806
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    goto :goto_1

    .line 807
    :cond_9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_transitionDisable:I

    if-ne v5, v3, :cond_a

    .line 808
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    goto :goto_1

    .line 809
    :cond_a
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_pathMotionArc:I

    if-ne v5, v3, :cond_b

    .line 810
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    goto :goto_1

    .line 811
    :cond_b
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_layoutDuringTransition:I

    if-ne v5, v3, :cond_c

    .line 812
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    :cond_c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 815
    :cond_d
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    if-ne p1, v4, :cond_e

    .line 816
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    :cond_e
    return-void
.end method

.method private fillFromAttributeList(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 750
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 751
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->fill(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 752
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 442
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-direct {v1, p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public debugString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 570
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    if-ne v2, v1, :cond_1

    .line 576
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 578
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getDuration()I
    .locals 0

    .line 478
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    return p0
.end method

.method public getEndConstraintSetId()I
    .locals 0

    .line 451
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    return p0
.end method

.method public getLayoutDuringTransition()I
    .locals 0

    .line 438
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    return p0
.end method

.method public getStartConstraintSetId()I
    .locals 0

    .line 460
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    return p0
.end method

.method public getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;
    .locals 0

    .line 509
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 548
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setDuration(I)V
    .locals 0

    .line 469
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    return-void
.end method
