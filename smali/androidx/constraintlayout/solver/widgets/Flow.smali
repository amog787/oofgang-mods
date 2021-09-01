.class public Landroidx/constraintlayout/solver/widgets/Flow;
.super Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    }
.end annotation


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 48
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 55
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    const/4 v2, 0x2

    .line 64
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 65
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 66
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 70
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return p0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return p0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return p0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return p0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return p0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return p0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return p0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return p0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return p0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return p0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return p0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return p0
.end method

.method private createAlignedConstraints(Z)V
    .locals 11

    .line 1084
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1090
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v1, v2, :cond_1

    .line 1091
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 1092
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    .line 1096
    aget v1, v1, v3

    const/4 v4, 0x0

    move v5, v0

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v2, :cond_8

    if-eqz p1, :cond_2

    sub-int v7, v2, v5

    sub-int/2addr v7, v3

    goto :goto_2

    :cond_2
    move v7, v5

    .line 1104
    :goto_2
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v8, v7

    if-eqz v7, :cond_7

    .line 1105
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    .line 1109
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1110
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1111
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_4
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_5

    .line 1114
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_5
    if-lez v5, :cond_6

    .line 1117
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1118
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_6
    move-object v4, v7

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    move p1, v0

    :goto_4
    if-ge p1, v1, :cond_e

    .line 1123
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, p1

    if-eqz v5, :cond_d

    .line 1124
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_9

    goto :goto_5

    :cond_9
    if-nez p1, :cond_a

    .line 1128
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1129
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1130
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_a
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_b

    .line 1133
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_b
    if-lez p1, :cond_c

    .line 1136
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1137
    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_c
    move-object v4, v5

    :cond_d
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    move p1, v0

    :goto_6
    if-ge p1, v2, :cond_15

    move v4, v0

    :goto_7
    if-ge v4, v1, :cond_14

    mul-int v5, v4, v2

    add-int/2addr v5, p1

    .line 1145
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    if-ne v7, v3, :cond_f

    mul-int v5, p1, v1

    add-int/2addr v5, v4

    .line 1148
    :cond_f
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v8, v7

    if-lt v5, v8, :cond_10

    goto :goto_8

    .line 1151
    :cond_10
    aget-object v5, v7, v5

    if-eqz v5, :cond_13

    .line 1152
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_11

    goto :goto_8

    .line 1155
    :cond_11
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, p1

    .line 1156
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v4

    if-eq v5, v7, :cond_12

    .line 1158
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1159
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_12
    if-eq v5, v8, :cond_13

    .line 1162
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v9, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1163
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_15
    :goto_9
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_3

    .line 199
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 202
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 203
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 204
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p2

    .line 209
    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p0

    return p0
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_3

    .line 181
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 184
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 185
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 186
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p2

    .line 191
    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p0

    return p0
.end method

.method private measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    if-nez v3, :cond_4

    .line 935
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v6, :cond_3

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v2, :cond_3

    if-lez v7, :cond_0

    .line 942
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v9

    .line 944
    :cond_0
    aget-object v9, v1, v7

    if-nez v9, :cond_1

    goto :goto_1

    .line 948
    :cond_1
    invoke-direct {v0, v9, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    move v7, v6

    move v6, v5

    goto :goto_6

    .line 956
    :cond_4
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v6, :cond_8

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_3
    if-ge v7, v2, :cond_8

    if-lez v7, :cond_5

    .line 963
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v8, v9

    .line 965
    :cond_5
    aget-object v9, v1, v7

    if-nez v9, :cond_6

    goto :goto_4

    .line 969
    :cond_6
    invoke-direct {v0, v9, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v4, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    move v7, v5

    .line 978
    :goto_6
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-nez v8, :cond_9

    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 979
    iput-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    :cond_9
    const/4 v8, 0x1

    if-nez v6, :cond_a

    if-eq v3, v8, :cond_b

    :cond_a
    if-nez v7, :cond_c

    if-nez v3, :cond_c

    :cond_b
    move v9, v8

    goto :goto_7

    :cond_c
    move v9, v5

    :goto_7
    if-nez v9, :cond_22

    if-nez v3, :cond_d

    int-to-float v6, v2

    int-to-float v10, v7

    div-float/2addr v6, v10

    float-to-double v10, v6

    .line 992
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_8

    :cond_d
    int-to-float v7, v2

    int-to-float v10, v6

    div-float/2addr v7, v10

    float-to-double v10, v7

    .line 994
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 997
    :goto_8
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_f

    array-length v12, v10

    if-ge v12, v7, :cond_e

    goto :goto_9

    .line 1000
    :cond_e
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 998
    :cond_f
    :goto_9
    new-array v10, v7, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1002
    :goto_a
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_11

    array-length v12, v10

    if-ge v12, v6, :cond_10

    goto :goto_b

    .line 1005
    :cond_10
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 1003
    :cond_11
    :goto_b
    new-array v10, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_c
    move v10, v5

    :goto_d
    if-ge v10, v7, :cond_1a

    move v11, v5

    :goto_e
    if-ge v11, v6, :cond_19

    mul-int v12, v11, v7

    add-int/2addr v12, v10

    if-ne v3, v8, :cond_12

    mul-int v12, v10, v6

    add-int/2addr v12, v11

    .line 1014
    :cond_12
    array-length v13, v1

    if-lt v12, v13, :cond_13

    goto :goto_f

    .line 1017
    :cond_13
    aget-object v12, v1, v12

    if-nez v12, :cond_14

    goto :goto_f

    .line 1021
    :cond_14
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 1022
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v14, v10

    if-eqz v15, :cond_15

    aget-object v14, v14, v10

    .line 1023
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    if-ge v14, v13, :cond_16

    .line 1024
    :cond_15
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v12, v13, v10

    .line 1026
    :cond_16
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 1027
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v14, v11

    if-eqz v15, :cond_17

    aget-object v14, v14, v11

    .line 1028
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    if-ge v14, v13, :cond_18

    .line 1029
    :cond_17
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v12, v13, v11

    :cond_18
    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_1a
    move v10, v5

    move v11, v10

    :goto_10
    if-ge v10, v7, :cond_1d

    .line 1036
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v10

    if-eqz v12, :cond_1c

    if-lez v10, :cond_1b

    .line 1039
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v11, v13

    .line 1041
    :cond_1b
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v11, v12

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_1d
    move v10, v5

    move v12, v10

    :goto_11
    if-ge v10, v6, :cond_20

    .line 1046
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v13, v13, v10

    if-eqz v13, :cond_1f

    if-lez v10, :cond_1e

    .line 1049
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v12, v14

    .line 1051
    :cond_1e
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 1054
    :cond_20
    aput v11, p5, v5

    .line 1055
    aput v12, p5, v8

    if-nez v3, :cond_21

    if-le v11, v4, :cond_b

    if-le v7, v8, :cond_b

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_7

    :cond_21
    if-le v12, v4, :cond_b

    if-le v6, v8, :cond_b

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_7

    .line 1079
    :cond_22
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aput v7, v0, v5

    .line 1080
    aput v6, v0, v8

    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 28

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 746
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 747
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez p3, :cond_6

    move/from16 v0, v21

    move v1, v0

    move v11, v1

    :goto_0
    if-ge v11, v9, :cond_c

    .line 754
    aget-object v12, p1, v11

    .line 755
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 756
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v14, v0

    .line 759
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_2

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_2

    move/from16 v0, v20

    goto :goto_1

    :cond_2
    move/from16 v0, v21

    :goto_1
    if-nez v0, :cond_3

    if-lez v11, :cond_3

    .line 760
    iget v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_3

    rem-int v2, v11, v2

    if-nez v2, :cond_3

    move/from16 v0, v20

    :cond_3
    if-eqz v0, :cond_5

    .line 765
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 766
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 767
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v1, v13

    goto :goto_2

    :cond_5
    if-lez v11, :cond_4

    .line 770
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    .line 775
    :goto_2
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_0

    :cond_6
    move/from16 v0, v21

    move v1, v0

    move v11, v1

    :goto_3
    if-ge v11, v9, :cond_c

    .line 780
    aget-object v12, p1, v11

    .line 781
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 782
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    move v14, v0

    .line 785
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_8

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_8

    move/from16 v0, v20

    goto :goto_4

    :cond_8
    move/from16 v0, v21

    :goto_4
    if-nez v0, :cond_9

    if-lez v11, :cond_9

    .line 786
    iget v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_9

    rem-int v2, v11, v2

    if-nez v2, :cond_9

    move/from16 v0, v20

    :cond_9
    if-eqz v0, :cond_b

    .line 791
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 792
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 793
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v1, v13

    goto :goto_5

    :cond_b
    if-lez v11, :cond_a

    .line 796
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    .line 801
    :goto_5
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_3

    .line 804
    :cond_c
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 806
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 807
    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 808
    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 809
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 811
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v6

    .line 812
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v7

    .line 813
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v9

    .line 814
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v10

    .line 820
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_e

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_d

    goto :goto_6

    :cond_d
    move/from16 v11, v21

    goto :goto_7

    :cond_e
    :goto_6
    move/from16 v11, v20

    :goto_7
    if-lez v0, :cond_10

    if-eqz v11, :cond_10

    move/from16 v0, v21

    :goto_8
    if-ge v0, v1, :cond_10

    .line 826
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    if-nez p3, :cond_f

    .line 828
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_9

    .line 830
    :cond_f
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    move/from16 v22, v7

    move v0, v9

    move/from16 v12, v21

    move v13, v12

    move v14, v13

    move v7, v6

    move-object v6, v3

    move-object v3, v2

    move v2, v10

    :goto_a
    if-ge v14, v1, :cond_16

    .line 836
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    if-nez p3, :cond_13

    add-int/lit8 v2, v1, -0x1

    if-ge v14, v2, :cond_11

    .line 839
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 840
    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v5, v21

    goto :goto_b

    .line 843
    :cond_11
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v5

    .line 846
    :goto_b
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v24, v11

    move-object v11, v3

    move-object/from16 p1, v3

    move v3, v12

    move-object v12, v6

    move v6, v13

    move-object v13, v4

    move-object/from16 p2, v4

    move v4, v14

    move-object v14, v2

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v0

    move/from16 v18, v5

    move/from16 v19, p4

    .line 847
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 851
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 852
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v9

    add-int v12, v3, v9

    if-lez v4, :cond_12

    .line 854
    iget v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v12, v3

    :cond_12
    move-object/from16 v3, p1

    move v13, v6

    move/from16 v22, v21

    move-object/from16 v6, v24

    move-object/from16 v24, p2

    move/from16 v27, v5

    move-object v5, v2

    move/from16 v2, v27

    goto/16 :goto_d

    :cond_13
    move-object/from16 p1, v3

    move v3, v12

    move v0, v13

    move v4, v14

    add-int/lit8 v9, v1, -0x1

    if-ge v4, v9, :cond_14

    .line 858
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 859
    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v9

    move/from16 v25, v21

    goto :goto_c

    .line 862
    :cond_14
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v10

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 865
    :goto_c
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v15, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, v24

    move-object v14, v5

    move-object/from16 v26, v15

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v19, p4

    .line 866
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 870
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v7

    add-int v13, v0, v7

    .line 871
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v4, :cond_15

    .line 873
    iget v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v13, v3

    :cond_15
    move v12, v0

    move/from16 v7, v21

    move/from16 v0, v25

    move-object/from16 v3, v26

    :goto_d
    add-int/lit8 v14, v4, 0x1

    move/from16 v15, p4

    move-object/from16 v4, v24

    goto/16 :goto_a

    :cond_16
    move v3, v12

    move v0, v13

    .line 877
    aput v0, p5, v21

    .line 878
    aput v3, p5, v20

    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 22

    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_0

    return-void

    .line 898
    :cond_0
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 899
    new-instance v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 900
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 902
    :cond_1
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 903
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->clear()V

    .line 904
    iget-object v13, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 905
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v20

    move-object v11, v0

    move/from16 v12, p3

    move-object/from16 v16, v1

    move/from16 v21, p4

    .line 904
    invoke-virtual/range {v11 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    :goto_0
    move v0, v10

    :goto_1
    if-ge v0, v9, :cond_2

    .line 909
    aget-object v1, p1, v0

    .line 910
    invoke-virtual {v11, v1}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    :cond_2
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v0

    aput v0, p5, v10

    .line 914
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 6

    .line 1180
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 1182
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1183
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_3

    .line 1199
    :cond_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_3

    .line 1185
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_5

    .line 1187
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v0

    .line 1188
    :goto_2
    invoke-virtual {v4, p1, v3, v5}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1192
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1193
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 1194
    invoke-virtual {v1, p1, v0, v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1202
    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 86
    check-cast p1, Landroidx/constraintlayout/solver/widgets/Flow;

    .line 88
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 89
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 90
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 91
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 92
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 93
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 95
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 96
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 97
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 98
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 99
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 100
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 102
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 103
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 105
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 106
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 107
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 109
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 111
    iget p1, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public measure(IIII)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 217
    iget v0, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v11, 0x0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->measureChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {v6, v11, v11}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->setMeasure(II)V

    .line 219
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void

    .line 225
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v12

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingRight()I

    move-result v13

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingTop()I

    move-result v14

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v15

    const/4 v0, 0x2

    new-array v5, v0, [I

    sub-int v1, v8, v12

    sub-int/2addr v1, v13

    .line 232
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    sub-int v1, v10, v14

    sub-int/2addr v1, v15

    :cond_1
    move/from16 v16, v1

    .line 236
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/4 v2, -0x1

    if-nez v1, :cond_3

    .line 237
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v2, :cond_2

    .line 238
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 240
    :cond_2
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v2, :cond_5

    .line 241
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    goto :goto_0

    .line 244
    :cond_3
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v2, :cond_4

    .line 245
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 247
    :cond_4
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v2, :cond_5

    .line 248
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 252
    :cond_5
    :goto_0
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v2, v11

    move v3, v2

    .line 255
    :goto_1
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/16 v0, 0x8

    if-ge v2, v11, :cond_7

    .line 256
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    .line 257
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    if-ne v11, v0, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto :goto_1

    :cond_7
    if-lez v3, :cond_a

    sub-int/2addr v11, v3

    .line 263
    new-array v1, v11, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 265
    :goto_2
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v2, v11, :cond_9

    .line 266
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    .line 267
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_8

    .line 268
    aput-object v11, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_3

    :cond_a
    move v2, v11

    .line 274
    :goto_3
    iput-object v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 275
    iput v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 276
    iget v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    move v11, v4

    move-object/from16 v17, v5

    :goto_4
    const/4 v0, 0x0

    goto :goto_5

    .line 278
    :cond_b
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move v11, v4

    move/from16 v4, v16

    move-object/from16 v17, v5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_4

    :cond_c
    move v11, v4

    move-object/from16 v17, v5

    .line 282
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_4

    :cond_d
    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 286
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_4

    .line 291
    :goto_5
    aget v1, v17, v0

    add-int/2addr v1, v12

    add-int/2addr v1, v13

    .line 292
    aget v2, v17, v11

    add-int/2addr v2, v14

    add-int/2addr v2, v15

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v7, v4, :cond_e

    move v1, v8

    goto :goto_6

    :cond_e
    if-ne v7, v3, :cond_f

    .line 300
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_f
    if-nez v7, :cond_10

    goto :goto_6

    :cond_10
    move v1, v0

    :goto_6
    if-ne v9, v4, :cond_11

    move v2, v10

    goto :goto_7

    :cond_11
    if-ne v9, v3, :cond_12

    .line 308
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_7

    :cond_12
    if-nez v9, :cond_13

    goto :goto_7

    :cond_13
    move v2, v0

    .line 313
    :goto_7
    invoke-virtual {v6, v1, v2}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->setMeasure(II)V

    .line 314
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 315
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 316
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-lez v1, :cond_14

    goto :goto_8

    :cond_14
    move v11, v0

    :goto_8
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 0

    .line 146
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 0

    .line 122
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 0

    .line 148
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 0

    .line 124
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 0

    .line 155
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 0

    .line 139
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0

    .line 166
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 0

    .line 131
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 0

    .line 150
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 0

    .line 126
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 0

    .line 152
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 0

    .line 128
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 0

    .line 170
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 119
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 0

    .line 159
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0

    .line 143
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 0

    .line 168
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 0

    .line 135
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return-void
.end method

.method public setWrapMode(I)V
    .locals 0

    .line 163
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    return-void
.end method
