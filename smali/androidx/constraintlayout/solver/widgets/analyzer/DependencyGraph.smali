.class public Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "DependencyGraph.java"


# instance fields
.field private container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedBuildGraph:Z

.field private mNeedRedoMeasures:Z

.field private mRuns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 45
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 57
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 53
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-void
.end method

.method private applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;",
            "II",
            "Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;",
            ">;",
            "Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;",
            ")V"
        }
    .end annotation

    .line 711
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 712
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eq p1, v1, :cond_c

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    .line 717
    new-instance p6, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    invoke-direct {p6, p1, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V

    .line 718
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1
    iput-object p6, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 722
    invoke-virtual {p6, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->add(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 723
    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 724
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_2

    .line 725
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_0

    .line 728
    :cond_3
    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 729
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_4

    .line 730
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    .line 733
    instance-of v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v0, :cond_7

    .line 734
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 735
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_6

    .line 736
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_2

    .line 740
    :cond_7
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v1, p4, :cond_8

    .line 742
    iput-boolean p3, p6, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->dual:Z

    :cond_8
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 744
    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_3

    .line 746
    :cond_9
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v1, p4, :cond_a

    .line 748
    iput-boolean p3, p6, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->dual:Z

    :cond_a
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 750
    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_4

    :cond_b
    if-ne p2, p3, :cond_c

    .line 752
    instance-of p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz p3, :cond_c

    .line 753
    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 754
    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method private basicMeasureWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)Z
    .locals 13

    .line 383
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 384
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v2

    const/4 v9, 0x1

    .line 385
    aget-object v3, v3, v9

    .line 387
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 388
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto :goto_0

    .line 394
    :cond_1
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v10

    const/4 v6, 0x2

    if-gez v5, :cond_2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_2

    .line 395
    iput v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 397
    :cond_2
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_3

    .line 398
    iput v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 400
    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    const/4 v7, 0x3

    if-lez v5, :cond_9

    .line 401
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v5, :cond_4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_5

    .line 402
    :cond_4
    iput v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    goto :goto_1

    .line 403
    :cond_5
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_7

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_6

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_7

    .line 404
    :cond_6
    iput v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    goto :goto_1

    .line 405
    :cond_7
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_9

    if-ne v3, v5, :cond_9

    .line 406
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v5, :cond_8

    .line 407
    iput v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 409
    :cond_8
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v5, :cond_9

    .line 410
    iput v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 415
    :cond_9
    :goto_1
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_b

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v5, v9, :cond_b

    .line 416
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_b

    .line 417
    :cond_a
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_b
    move-object v5, v4

    .line 420
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_d

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v9, :cond_d

    .line 421
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_c

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_d

    .line 422
    :cond_c
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_d
    move-object v8, v3

    .line 426
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iput-object v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 427
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 428
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iput-object v8, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 429
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 431
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_f

    :cond_e
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v3, :cond_25

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v3, :cond_25

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_f

    goto/16 :goto_3

    .line 450
    :cond_f
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v5, v3, :cond_17

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v3, :cond_10

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_17

    .line 451
    :cond_10
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v3, v7, :cond_12

    .line 452
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_11

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    .line 453
    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 455
    :cond_11
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v2, v8

    .line 456
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 457
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 458
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 459
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 460
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    :cond_12
    if-ne v3, v9, :cond_13

    .line 463
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 464
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto/16 :goto_0

    :cond_13
    if-ne v3, v6, :cond_15

    .line 467
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v2

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v12, :cond_14

    aget-object v3, v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_17

    .line 469
    :cond_14
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 470
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 471
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    .line 472
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 473
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 474
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 475
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    .line 480
    :cond_15
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v3, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_16

    aget-object v3, v3, v9

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    .line 482
    :cond_16
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 483
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 484
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 485
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    .line 490
    :cond_17
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_20

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_18

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_20

    .line 491
    :cond_18
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v7, :cond_1b

    .line 492
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_19

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    .line 493
    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 495
    :cond_19
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 496
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 497
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatioSide()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    div-float v2, v10, v2

    :cond_1a
    int-to-float v3, v6

    mul-float/2addr v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 502
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 503
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 504
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 505
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    :cond_1b
    if-ne v3, v9, :cond_1c

    const/4 v6, 0x0

    .line 508
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 509
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto/16 :goto_0

    :cond_1c
    if-ne v3, v6, :cond_1e

    .line 512
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v9

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v7, :cond_1d

    aget-object v3, v3, v9

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_20

    .line 514
    :cond_1d
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 515
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 516
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v8, v2

    .line 517
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 518
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 519
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 520
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    .line 525
    :cond_1e
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v3, v6

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1f

    aget-object v3, v3, v7

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_20

    .line 527
    :cond_1f
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 528
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 529
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 530
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    .line 535
    :cond_20
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_0

    if-ne v8, v3, :cond_0

    .line 536
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v3, v9, :cond_24

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v9, :cond_21

    goto :goto_2

    :cond_21
    if-ne v4, v6, :cond_0

    if-ne v3, v6, :cond_0

    .line 542
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_22

    aget-object v2, v3, v2

    if-ne v2, v5, :cond_0

    :cond_22
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v2, v9

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_23

    aget-object v2, v2, v9

    if-ne v2, v4, :cond_0

    .line 548
    :cond_23
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 549
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 550
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 551
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 552
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 553
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 554
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 555
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    .line 538
    :cond_24
    :goto_2
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 539
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 540
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto/16 :goto_0

    .line 433
    :cond_25
    :goto_3
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    .line 434
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_26

    .line 435
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    .line 436
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v6, v2

    move-object v5, v3

    goto :goto_4

    :cond_26
    move v6, v2

    .line 438
    :goto_4
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    .line 439
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v3, :cond_27

    .line 440
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    .line 441
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v8, v2

    move-object v7, v3

    goto :goto_5

    :cond_27
    move-object v7, v8

    move v8, v2

    :goto_5
    move-object v3, p0

    move-object v4, v1

    .line 443
    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 444
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 445
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 446
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_0

    :cond_28
    return v2
.end method

.method private computeWrap(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I
    .locals 6

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 67
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 68
    invoke-virtual {v4, p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->computeWrapSize(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)J

    move-result-wide v4

    .line 69
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v1

    return p0
.end method

.method private findGroup(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;",
            ">;)V"
        }
    .end annotation

    .line 760
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 761
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_1

    .line 762
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x0

    .line 763
    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_0

    .line 764
    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_0

    .line 765
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 766
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x0

    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_0

    .line 769
    :cond_2
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 770
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_4

    .line 771
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x1

    .line 772
    iget-object v7, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_1

    .line 773
    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_3

    .line 774
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 775
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x1

    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 779
    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 780
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_6

    .line 781
    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    .line 782
    invoke-direct/range {v2 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 372
    iput-object p4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 373
    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 374
    iput p5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 375
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 376
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 377
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 378
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 379
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    return-void
.end method


# virtual methods
.method public buildGraph()V
    .locals 4

    .line 629
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->buildGraph(Ljava/util/ArrayList;)V

    .line 632
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 634
    sput v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->index:I

    .line 635
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 636
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 638
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    return-void
.end method

.method public buildGraph(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            ">;)V"
        }
    .end annotation

    .line 642
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 643
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 644
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 645
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 649
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v3, :cond_1

    .line 650
    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 654
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-nez v3, :cond_2

    .line 656
    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 657
    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    :cond_2
    if-nez v1, :cond_3

    .line 660
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 662
    :cond_3
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 664
    :cond_4
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :goto_1
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 667
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-nez v3, :cond_5

    .line 669
    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 670
    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    :cond_5
    if-nez v1, :cond_6

    .line 673
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 675
    :cond_6
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 677
    :cond_7
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :goto_2
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    if-eqz v3, :cond_0

    .line 680
    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 684
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 686
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 687
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->clear()V

    goto :goto_3

    .line 689
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 690
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-ne v1, v2, :cond_b

    goto :goto_4

    .line 693
    :cond_b
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->apply()V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public directMeasure(Z)Z
    .locals 8

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 111
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    if-eqz v1, :cond_2

    .line 112
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 113
    iput-boolean v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 114
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 115
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 118
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 119
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 120
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 123
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 128
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setX(I)V

    .line 129
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setY(I)V

    .line 131
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 132
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 134
    iget-boolean v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    if-eqz v4, :cond_4

    .line 135
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 138
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v4

    .line 139
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v5

    .line 141
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 142
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 146
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 149
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v6, :cond_5

    if-ne v3, v6, :cond_9

    :cond_5
    if-eqz p1, :cond_7

    .line 151
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 152
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v7

    if-nez v7, :cond_6

    move p1, v2

    :cond_7
    if-eqz p1, :cond_8

    .line 159
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_8

    .line 160
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 161
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v6, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 162
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 164
    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, p1, :cond_9

    .line 165
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 166
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 167
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 176
    :cond_9
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, p1, v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_b

    aget-object p1, p1, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v6, :cond_a

    goto :goto_1

    :cond_a
    move p1, v2

    goto :goto_2

    .line 180
    :cond_b
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    add-int/2addr p1, v4

    .line 181
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 182
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 183
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 184
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, p1, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v6, :cond_c

    aget-object p1, p1, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v4, :cond_d

    .line 186
    :cond_c
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    add-int/2addr p1, v5

    .line 187
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 188
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 190
    :cond_d
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    move p1, v0

    .line 197
    :goto_2
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 198
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_e

    iget-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v6, :cond_e

    goto :goto_3

    .line 201
    :cond_e
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    goto :goto_3

    .line 205
    :cond_f
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    if-nez p1, :cond_11

    .line 206
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_11

    goto :goto_4

    .line 209
    :cond_11
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_12

    :goto_5
    move v0, v2

    goto :goto_6

    .line 213
    :cond_12
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_13

    instance-of v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;

    if-nez v6, :cond_13

    goto :goto_5

    .line 217
    :cond_13
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_10

    instance-of v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-nez v6, :cond_10

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;

    if-nez v5, :cond_10

    goto :goto_5

    .line 223
    :cond_14
    :goto_6
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 224
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v0
.end method

.method public directMeasureSetup(Z)Z
    .locals 4

    .line 230
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 232
    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 233
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 234
    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    .line 235
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 236
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 237
    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    .line 238
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iput-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 241
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 242
    iput-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    .line 243
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 244
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 245
    iput-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    .line 246
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 247
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 250
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 255
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setX(I)V

    .line 256
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setY(I)V

    .line 257
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 258
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public directMeasureWithOrientation(ZI)Z
    .locals 9

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 265
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 266
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 268
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v4

    .line 269
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v5

    if-eqz p1, :cond_4

    .line 272
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v6, :cond_0

    if-ne v3, v6, :cond_4

    .line 273
    :cond_0
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 274
    iget v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-ne v8, p2, :cond_1

    .line 275
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v7

    if-nez v7, :cond_1

    move p1, v2

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 282
    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, p1, :cond_4

    .line 283
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 284
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 285
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 288
    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, p1, :cond_4

    .line 289
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 290
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 291
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 302
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, p1, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_5

    aget-object p1, p1, v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v5, :cond_7

    .line 304
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    add-int/2addr p1, v4

    .line 305
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 306
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_2

    .line 310
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, p1, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v6, :cond_8

    aget-object p1, p1, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v4, :cond_7

    goto :goto_1

    :cond_7
    move p1, v2

    goto :goto_3

    .line 312
    :cond_8
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    add-int/2addr p1, v5

    .line 313
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 314
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    :goto_2
    move p1, v0

    .line 318
    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 321
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 322
    iget v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v6, p2, :cond_9

    goto :goto_4

    .line 325
    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_a

    iget-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v6, :cond_a

    goto :goto_4

    .line 328
    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    goto :goto_4

    .line 332
    :cond_b
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 333
    iget v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v6, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    .line 336
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_e

    goto :goto_5

    .line 339
    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_f

    :goto_6
    move v0, v2

    goto :goto_7

    .line 343
    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_10

    goto :goto_6

    .line 347
    :cond_10
    instance-of v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-nez v6, :cond_c

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v5, :cond_c

    goto :goto_6

    .line 353
    :cond_11
    :goto_7
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 354
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v0
.end method

.method public invalidateGraph()V
    .locals 1

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    return-void
.end method

.method public invalidateMeasures()V
    .locals 1

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    return-void
.end method

.method public measureWidgets()V
    .locals 11

    .line 564
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 565
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 568
    :cond_1
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    .line 569
    aget-object v10, v2, v9

    .line 570
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 571
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 573
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v5, :cond_3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    .line 576
    :goto_2
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v5, :cond_4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    .line 579
    :cond_5
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 580
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 583
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    iget v8, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v7

    move-object v6, v7

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 585
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_3

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 587
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 589
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_7

    .line 590
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_3

    .line 592
    :cond_7
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 593
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    .line 596
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 598
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v2, :cond_9

    .line 599
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_3

    .line 601
    :cond_9
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 602
    iput-boolean v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 605
    :cond_a
    :goto_3
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public setMeasurer(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method
