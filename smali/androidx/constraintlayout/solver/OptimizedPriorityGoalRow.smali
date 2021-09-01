.class public Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "OptimizedPriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

.field mCache:Landroidx/constraintlayout/solver/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 2

    .line 166
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    const/16 v0, 0x80

    .line 26
    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->TABLE_SIZE:I

    new-array v1, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    .line 30
    new-instance v0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    .line 167
    iput-object p1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 5

    .line 204
    iget v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 205
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 206
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 208
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 209
    iput v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    .line 211
    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    move v2, v0

    .line 212
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v2, v3, :cond_1

    .line 213
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    new-instance v4, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;-><init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 221
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_2

    .line 222
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 227
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method private final removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 231
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_2

    .line 232
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 233
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 234
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 236
    iput v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    .line 237
    iput-boolean v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 3

    .line 197
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->reset()V

    .line 199
    iget-object v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 200
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    return-void
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x0

    move v1, p1

    .line 175
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_3

    .line 176
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v0

    .line 177
    iget v3, v2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 180
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    if-ne v1, p1, :cond_1

    .line 182
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 185
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object p0, p0, v1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " goal -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_0

    .line 275
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 276
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 5

    .line 245
    iget-object p2, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez p2, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getHead()I

    move-result v0

    .line 251
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getCurrentSize()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-lez v1, :cond_2

    .line 254
    iget-object v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getId(I)I

    move-result v2

    .line 255
    iget-object v3, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getValue(I)F

    move-result v3

    .line 256
    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v4, v2

    .line 258
    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 259
    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, p2, v3}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-direct {p0, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 262
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 264
    iget-object v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getNextIndice(I)I

    move-result v0

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0, p2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method
