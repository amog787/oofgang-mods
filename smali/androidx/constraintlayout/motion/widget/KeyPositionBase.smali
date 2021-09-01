.class abstract Landroidx/constraintlayout/motion/widget/KeyPositionBase;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyPositionBase.java"


# instance fields
.field mCurveFit:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 31
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    return-void
.end method


# virtual methods
.method getAttributeNames(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
