.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final didMeasures()V
    .locals 5

    .line 790
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 792
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 793
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_0

    .line 794
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$300(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 801
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$300(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 802
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 611
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 612
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 613
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    .line 617
    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 618
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 620
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 621
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 626
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 627
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v9

    .line 632
    sget-object v10, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, -0x2

    const/4 v14, 0x1

    if-eq v10, v14, :cond_8

    if-eq v10, v13, :cond_6

    if-eq v10, v12, :cond_5

    if-eq v10, v11, :cond_2

    move v6, v5

    move v9, v6

    goto :goto_2

    .line 650
    :cond_2
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    invoke-static {v6, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 653
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v9, v14, :cond_3

    move v9, v14

    goto :goto_0

    :cond_3
    move v9, v5

    .line 654
    :goto_0
    iget-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-eqz v10, :cond_7

    if-eqz v9, :cond_4

    if-eqz v9, :cond_7

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v9, v9, v5

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 656
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    .line 645
    :cond_5
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, -0x1

    .line 645
    invoke-static {v6, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_1

    .line 638
    :cond_6
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    invoke-static {v6, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    :cond_7
    move v9, v14

    goto :goto_2

    :cond_8
    const/high16 v9, 0x40000000    # 2.0f

    .line 634
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_1
    move v9, v5

    .line 663
    :goto_2
    sget-object v10, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v10, v10, v16

    if-eq v10, v14, :cond_f

    if-eq v10, v13, :cond_d

    if-eq v10, v12, :cond_c

    if-eq v10, v11, :cond_9

    move v0, v5

    move v7, v0

    goto :goto_5

    .line 681
    :cond_9
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v0

    invoke-static {v0, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 684
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v7, v14, :cond_a

    move v7, v14

    goto :goto_3

    :cond_a
    move v7, v5

    .line 685
    :goto_3
    iget-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-eqz v8, :cond_e

    if-eqz v7, :cond_b

    if-eqz v7, :cond_e

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v7, v7, v14

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_e

    .line 687
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_4

    .line 676
    :cond_c
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v0

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v7

    add-int/2addr v8, v7

    const/4 v7, -0x1

    .line 676
    invoke-static {v0, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_4

    .line 669
    :cond_d
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v0

    invoke-static {v0, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    :cond_e
    move v7, v14

    goto :goto_5

    :cond_f
    const/high16 v0, 0x40000000    # 2.0f

    .line 665
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v0, v7

    :goto_4
    move v7, v5

    .line 694
    :goto_5
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_10

    move v8, v14

    goto :goto_6

    :cond_10
    move v8, v5

    .line 695
    :goto_6
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v10, :cond_11

    move v10, v14

    goto :goto_7

    :cond_11
    move v10, v5

    .line 697
    :goto_7
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v11, :cond_13

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v11, :cond_12

    goto :goto_8

    :cond_12
    move v4, v5

    goto :goto_9

    :cond_13
    :goto_8
    move v4, v14

    .line 699
    :goto_9
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v11, :cond_15

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v11, :cond_14

    goto :goto_a

    :cond_14
    move v3, v5

    goto :goto_b

    :cond_15
    :goto_a
    move v3, v14

    :goto_b
    const/4 v11, 0x0

    if-eqz v8, :cond_16

    .line 701
    iget v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_16

    move v12, v14

    goto :goto_c

    :cond_16
    move v12, v5

    :goto_c
    if-eqz v10, :cond_17

    .line 702
    iget v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v11, v13, v11

    if-lez v11, :cond_17

    move v11, v14

    goto :goto_d

    :cond_17
    move v11, v5

    .line 704
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 705
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 711
    iget-boolean v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-nez v14, :cond_1a

    if-eqz v8, :cond_1a

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v8, :cond_1a

    if-eqz v10, :cond_1a

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v8, :cond_18

    goto :goto_f

    :cond_18
    move v7, v5

    move v9, v7

    move v14, v9

    :cond_19
    :goto_e
    const/4 v0, -0x1

    goto/16 :goto_14

    .line 715
    :cond_1a
    :goto_f
    instance-of v8, v13, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v8, :cond_1b

    instance-of v8, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v8, :cond_1b

    .line 716
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 717
    move-object v10, v13

    check-cast v10, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v10, v8, v6, v0}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    goto :goto_10

    .line 719
    :cond_1b
    invoke-virtual {v13, v6, v0}, Landroid/view/View;->measure(II)V

    .line 722
    :goto_10
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 723
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 724
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eqz v9, :cond_1c

    .line 730
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v9, v5

    :cond_1c
    if-eqz v7, :cond_1d

    .line 733
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v9, 0x1

    aput v10, v7, v9

    .line 736
    :cond_1d
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v7, :cond_1e

    .line 737
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_11

    :cond_1e
    move v7, v8

    .line 739
    :goto_11
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v9, :cond_1f

    .line 740
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 742
    :cond_1f
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v9, :cond_20

    .line 743
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_12

    :cond_20
    move v9, v10

    .line 745
    :goto_12
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v5, :cond_21

    .line 746
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_21
    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v12, :cond_22

    if-eqz v4, :cond_22

    .line 750
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v9

    mul-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v7, v4

    goto :goto_13

    :cond_22
    if-eqz v11, :cond_23

    if-eqz v3, :cond_23

    .line 753
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v7

    div-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v9, v4

    :cond_23
    :goto_13
    if-ne v8, v7, :cond_24

    if-eq v10, v9, :cond_19

    :cond_24
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v8, v7, :cond_25

    .line 759
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_25
    if-eq v10, v9, :cond_26

    .line 762
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 764
    :cond_26
    invoke-virtual {v13, v6, v0}, Landroid/view/View;->measure(II)V

    .line 765
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 766
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 767
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v14

    goto/16 :goto_e

    :goto_14
    if-eq v14, v0, :cond_27

    const/4 v0, 0x1

    goto :goto_15

    :cond_27
    const/4 v0, 0x0

    .line 774
    :goto_15
    iget v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v7, v3, :cond_29

    iget v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v9, v3, :cond_28

    goto :goto_16

    :cond_28
    const/4 v5, 0x0

    goto :goto_17

    :cond_29
    :goto_16
    const/4 v5, 0x1

    :goto_17
    iput-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 776
    iget-boolean v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v3, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    if-eqz v0, :cond_2b

    const/4 v3, -0x1

    if-eq v14, v3, :cond_2b

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    if-eq v1, v14, :cond_2b

    const/4 v1, 0x1

    .line 780
    iput-boolean v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 782
    :cond_2b
    iput v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 783
    iput v9, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 784
    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 785
    iput v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void
.end method
