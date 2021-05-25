.class Lcom/android/server/wm/gwm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IScreenRotationAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/gwm$zta;
    }
.end annotation


# static fields
.field static final k:Ljava/lang/String; = "OpLandscapeAppAnimationImprovement"

.field static final l:I = 0x1eab90

.field static final m:I = 0x1eab90

.field static final n:I = 0x1eab91

.field static final o:I = 0x1eab92

.field static final p:I = 0x150

.field static final q:Landroid/view/animation/Interpolator;


# instance fields
.field a:Z

.field b:Z

.field private final bio:Landroid/graphics/Matrix;

.field private bud:Lcom/android/server/wm/gwm$zta;

.field private bvj:I

.field c:Z

.field private cgv:J

.field private cjf:Landroid/view/animation/Animation;

.field private final cno:Landroid/view/animation/Transformation;

.field d:Z

.field private dma:Landroid/view/SurfaceControl;

.field e:Z

.field private ear:Landroid/view/animation/Animation;

.field f:I

.field private fto:Z

.field private final g:Landroid/view/animation/Interpolator;

.field private gck:Landroid/view/SurfaceControl;

.field private gwm:I

.field private final h:Landroid/view/animation/Interpolator;

.field private hmo:Landroid/view/animation/Animation;

.field private final i:Landroid/view/animation/Interpolator;

.field private ibl:I

.field private final igw:Lcom/android/server/wm/WindowManagerService;

.field private ire:Landroid/view/animation/Animation;

.field private irq:F

.field ivd:Z

.field private final j:Landroid/view/DisplayInfo;

.field private final kth:Landroid/view/animation/Transformation;

.field private les:F

.field private lqr:Z

.field private obl:Landroid/graphics/Rect;

.field private oif:Z

.field private oxb:Landroid/graphics/Rect;

.field private qbh:Lcom/android/server/wm/BlackFrame;

.field qeg:Z

.field private final rtg:[F

.field private final sis:Landroid/content/Context;

.field private final ssp:Landroid/view/animation/Transformation;

.field private final tsu:Lcom/android/server/wm/DisplayContent;

.field private ugm:I

.field private vdb:I

.field vdw:Z

.field private veq:Z

.field private vju:Z

.field private wtn:Landroid/view/SurfaceControl;

.field private you:Z

.field private ywr:Landroid/view/SurfaceControl;

.field private zgw:I

.field private zta:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/gwm;->q:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/gwm;->zta:Landroid/util/BoostFramework;

    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->you:Z

    const/16 v7, 0x9

    new-array v7, v7, [F

    iput-object v7, v1, Lcom/android/server/wm/gwm;->rtg:[F

    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/gwm;->ssp:Landroid/view/animation/Transformation;

    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/gwm;->cno:Landroid/view/animation/Transformation;

    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/gwm;->kth:Landroid/view/animation/Transformation;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/gwm;->bio:Landroid/graphics/Matrix;

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->oif:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/gwm;->obl:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/gwm;->oxb:Landroid/graphics/Rect;

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->vdw:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->qeg:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->ivd:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->a:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->b:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->c:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->d:Z

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonEnabled()Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/wm/gwm;->e:Z

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    const v10, 0x3ecccccd    # 0.4f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v8, v1, Lcom/android/server/wm/gwm;->h:Landroid/view/animation/Interpolator;

    move-object/from16 v8, p5

    iput-object v8, v1, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v1, Lcom/android/server/wm/gwm;->obl:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iput v4, v1, Lcom/android/server/wm/gwm;->f:I

    const v8, 0x10c000e

    invoke-static {v0, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/gwm;->g:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/gwm;->i:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/gwm;->zta:Landroid/util/BoostFramework;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/wm/gwm;->j:Landroid/view/DisplayInfo;

    if-eqz p3, :cond_0

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->vju:Z

    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v12, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_0

    :cond_0
    iget v12, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    :goto_0
    const/4 v13, 0x3

    if-eq v8, v7, :cond_2

    if-ne v8, v13, :cond_1

    goto :goto_1

    :cond_1
    iput v10, v1, Lcom/android/server/wm/gwm;->bvj:I

    iput v12, v1, Lcom/android/server/wm/gwm;->ibl:I

    goto :goto_2

    :cond_2
    :goto_1
    iput v12, v1, Lcom/android/server/wm/gwm;->bvj:I

    iput v10, v1, Lcom/android/server/wm/gwm;->ibl:I

    :goto_2
    const/16 v14, 0x10

    if-eq v4, v14, :cond_4

    const/16 v14, 0x12

    if-eq v4, v14, :cond_4

    const/16 v14, 0x14

    if-eq v4, v14, :cond_3

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->vdw:Z

    goto :goto_3

    :cond_3
    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->a:Z

    goto :goto_3

    :cond_4
    :pswitch_1
    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->vdw:Z

    :goto_3
    iget-boolean v14, v1, Lcom/android/server/wm/gwm;->a:Z

    const-string v15, "OpLandscapeAppAnimationImprovement"

    if-nez v14, :cond_9

    iget-object v14, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v14

    if-eqz v14, :cond_5

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->ivd:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->qeg:Z

    :cond_5
    move v14, v6

    :goto_4
    iget-object v11, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v14, v11, :cond_7

    iget-object v11, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOpeningApps="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_6

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->ivd:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->qeg:Z

    goto :goto_5

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x3

    goto :goto_4

    :cond_7
    :goto_5
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->getSourceIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v9, "sourceIntent is CATEGORY_LAUNCHER"

    invoke-static {v15, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->ivd:Z

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->qeg:Z

    goto :goto_6

    :cond_8
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "sourceIntent is CATEGORY_HOME"

    invoke-static {v15, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->ivd:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->qeg:Z

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->d:Z

    :cond_9
    :goto_6
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->getStartActivityFromRecents()Z

    move-result v9

    if-eqz v9, :cond_a

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->ivd:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->qeg:Z

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->b:Z

    invoke-static {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    :cond_a
    const/4 v9, -0x2

    if-ne v4, v9, :cond_b

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->ivd:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->qeg:Z

    iput-boolean v6, v1, Lcom/android/server/wm/gwm;->b:Z

    invoke-static {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->c:Z

    :cond_b
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_f

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mFocusedApp="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_c
    const-string v4, "mFocusedApp=null"

    :goto_7
    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/bvj;->zta()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPrevFocusedApp="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/bvj;->zta()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    const-string v4, "mPrevFocusedApp=null"

    :goto_8
    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/bvj;->you()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPrevFocusedNonNullApp="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/bvj;->you()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_e
    const-string v4, "mPrevFocusedNonNullApp=null"

    :goto_9
    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsAppLaunch="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/wm/gwm;->qeg:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsAppFinish="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/wm/gwm;->ivd:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsAppFinishWithHomeGesture="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/wm/gwm;->d:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsAppTransitTo="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/wm/gwm;->vdw:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsKeyguardLaunch="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/wm/gwm;->a:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsAppLaunchFromRecents="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/wm/gwm;->b:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsActivityHomeTypeRotation="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/wm/gwm;->c:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iput v8, v1, Lcom/android/server/wm/gwm;->gwm:I

    iput v10, v1, Lcom/android/server/wm/gwm;->ugm:I

    iput v12, v1, Lcom/android/server/wm/gwm;->vdb:I

    new-instance v4, Lcom/android/server/wm/gwm$zta;

    invoke-direct {v4, v1}, Lcom/android/server/wm/gwm$zta;-><init>(Lcom/android/server/wm/gwm;)V

    iput-object v4, v1, Lcom/android/server/wm/gwm;->bud:Lcom/android/server/wm/gwm$zta;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    :try_start_0
    invoke-virtual {v2, v5}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v9, "BackColorSurface"

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->qeg:Z

    if-nez v5, :cond_12

    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->a:Z

    if-eqz v5, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v9, "ScreenshotSurfaceLayer"

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v9, v1, Lcom/android/server/wm/gwm;->bvj:I

    iget v10, v1, Lcom/android/server/wm/gwm;->ibl:I

    invoke-virtual {v5, v9, v10}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    :goto_a
    iput-object v5, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    goto :goto_c

    :cond_12
    :goto_b
    iput-boolean v7, v1, Lcom/android/server/wm/gwm;->oif:Z

    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->makeCovered()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v9, "ScreenshotSurfaceLayer-Covered"

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v9, v1, Lcom/android/server/wm/gwm;->bvj:I

    iget v10, v1, Lcom/android/server/wm/gwm;->ibl:I

    invoke-virtual {v5, v9, v10}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    goto :goto_a

    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v9, "EnterBlackFrameLayer"

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/gwm;->wtn:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v9, "ScreenshotSurfaceOverlay"

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v9, v1, Lcom/android/server/wm/gwm;->bvj:I

    iget v10, v1, Lcom/android/server/wm/gwm;->ibl:I

    invoke-virtual {v5, v9, v10}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v7}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    iget-object v5, v1, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v0}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    iput v0, v1, Lcom/android/server/wm/gwm;->les:F

    iget-object v0, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to attach screenshot(mScreenshotLayer) - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-object v0, v1, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to attach screenshot(mSurfaceControlOverlay) - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0, v7}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0, v7}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    iget-object v0, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    const v5, 0x1eab91

    invoke-virtual {v4, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v5, v1, Lcom/android/server/wm/gwm;->les:F

    aput v5, v2, v6

    iget v5, v1, Lcom/android/server/wm/gwm;->les:F

    aput v5, v2, v7

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/server/wm/gwm;->les:F

    aput v6, v2, v5

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    const v2, 0x1eab92

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_f

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to take screenshot of display "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-virtual {v3}, Landroid/view/Surface;->destroy()V
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": CREATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual {v1, v4, v8}, Lcom/android/server/wm/gwm;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic bio(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static synthetic bvj(Lcom/android/server/wm/gwm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/gwm;->oif:Z

    return p0
.end method

.method static synthetic cno(Lcom/android/server/wm/gwm;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/gwm;->les:F

    return p0
.end method

.method static synthetic dma(Lcom/android/server/wm/gwm;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/gwm;->bvj:I

    return p0
.end method

.method static synthetic gck(Lcom/android/server/wm/gwm;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/gwm;->ibl:I

    return p0
.end method

.method private gwm(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/animation/Animation;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x5

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    iget v6, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    iget v7, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    iget v2, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAppLaunchAnimationLocked(): iconPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", sourceBound="

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", displayFrame="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", appFrame="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", newSourceBound="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpLandscapeAppAnimationImprovement"

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, Lcom/android/server/wm/cjf/zta;

    iget-object p3, p0, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result p3

    invoke-direct {p2, v4, p1, p3}, Lcom/android/server/wm/cjf/zta;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object p1, p0, Lcom/android/server/wm/gwm;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget-object p0, p0, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object p1
.end method

.method private ibl(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget p2, p0, Lcom/android/server/wm/gwm;->vdb:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget p0, p0, Lcom/android/server/wm/gwm;->ugm:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p1, p0

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    iget v1, p0, Lcom/android/server/wm/gwm;->vdb:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iget p0, p0, Lcom/android/server/wm/gwm;->ugm:I

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {v0, p2, p0}, Landroid/graphics/Point;->set(II)V

    :cond_1
    :goto_0
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "computeIconPosition(): iconPos="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpLandscapeAppAnimationImprovement"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method static synthetic igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static synthetic kth(Lcom/android/server/wm/gwm;)F
    .locals 0

    iget p0, p0, Lcom/android/server/wm/gwm;->irq:F

    return p0
.end method

.method private obl(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/gwm;->rtg:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lcom/android/server/wm/gwm;->rtg:[F

    const/4 v0, 0x2

    aget v0, p2, v0

    const/4 v1, 0x5

    aget p2, p2, v1

    iget-boolean v1, p0, Lcom/android/server/wm/gwm;->vju:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/gwm;->oxb:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/gwm;->oxb:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/server/wm/gwm;->rtg:[F

    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x3

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method static synthetic oif(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->wtn:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private oxb(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v0, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v4, p7

    move/from16 v5, p8

    iget-object v6, v1, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_21

    iget-object v6, v1, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    if-nez v6, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-boolean v6, v1, Lcom/android/server/wm/gwm;->fto:Z

    const/4 v12, 0x1

    if-eqz v6, :cond_1

    return v12

    :cond_1
    iput-boolean v12, v1, Lcom/android/server/wm/gwm;->fto:Z

    iget v6, v1, Lcom/android/server/wm/gwm;->zgw:I

    iget v7, v1, Lcom/android/server/wm/gwm;->gwm:I

    invoke-static {v6, v7}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v11

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    iget-object v7, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v7, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x10a008e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->ire:Landroid/view/animation/Animation;

    move v15, v12

    goto/16 :goto_a

    :cond_2
    if-eqz v11, :cond_15

    const v4, 0x5010031

    const v10, 0x501003a

    const v15, 0x501003b

    const v8, 0x5010038

    const v9, 0x5010039

    const v5, 0x5010032

    const v7, 0x5010033

    if-eq v11, v12, :cond_c

    if-eq v11, v6, :cond_b

    const/4 v12, 0x3

    if-eq v11, v12, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-boolean v12, v1, Lcom/android/server/wm/gwm;->a:Z

    if-eqz v12, :cond_4

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x5010035

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x5010034

    goto/16 :goto_7

    :cond_4
    iget-boolean v12, v1, Lcom/android/server/wm/gwm;->c:Z

    if-eqz v12, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->b:Z

    if-eqz v5, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->qeg:Z

    if-eqz v5, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->ivd:Z

    if-eqz v5, :cond_a

    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->e:Z

    if-eqz v5, :cond_9

    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->d:Z

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto/16 :goto_5

    :cond_8
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x501002d

    goto :goto_0

    :cond_9
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x5010030

    :goto_0
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto/16 :goto_5

    :cond_a
    iget-boolean v4, v1, Lcom/android/server/wm/gwm;->vdw:Z

    if-eqz v4, :cond_14

    goto/16 :goto_6

    :cond_b
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x501003f

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x501003e

    goto/16 :goto_7

    :cond_c
    iget-boolean v12, v1, Lcom/android/server/wm/gwm;->a:Z

    if-eqz v12, :cond_d

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x5010037

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x5010036

    goto/16 :goto_7

    :cond_d
    iget-boolean v12, v1, Lcom/android/server/wm/gwm;->c:Z

    if-eqz v12, :cond_e

    :goto_1
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    goto/16 :goto_7

    :cond_e
    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->b:Z

    if-eqz v5, :cond_f

    :goto_2
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v4, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v4, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto/16 :goto_8

    :cond_f
    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->qeg:Z

    if-eqz v5, :cond_10

    :goto_3
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v4, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v4, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto :goto_8

    :cond_10
    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->ivd:Z

    if-eqz v5, :cond_13

    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->e:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v1, Lcom/android/server/wm/gwm;->d:Z

    if-eqz v5, :cond_11

    iget-object v5, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto :goto_5

    :cond_11
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x501002e

    goto :goto_4

    :cond_12
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x5010030

    :goto_4
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    :goto_5
    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x501002f

    goto :goto_7

    :cond_13
    iget-boolean v4, v1, Lcom/android/server/wm/gwm;->vdw:Z

    if-eqz v4, :cond_14

    :goto_6
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x10a00b3

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x10a00b1

    goto :goto_7

    :cond_14
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x10a00b0

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x10a00af

    goto :goto_7

    :cond_15
    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x10a008a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget-object v4, v1, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    const v5, 0x10a0089

    :goto_7
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    :goto_8
    iput-object v4, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    :goto_9
    const/4 v15, 0x0

    :goto_a
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v12, "OpLandscapeAppAnimationImprovement"

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start landscape app animation. customAnim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mCurRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/gwm;->zgw:I

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mOriginalRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/gwm;->gwm:I

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-eqz v11, :cond_1d

    if-ne v11, v6, :cond_17

    goto/16 :goto_e

    :cond_17
    iget-object v4, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/gwm;->ugm:I

    iget v8, v1, Lcom/android/server/wm/gwm;->vdb:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v4 .. v10}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/gwm;->ugm:I

    iget v8, v1, Lcom/android/server/wm/gwm;->vdb:I

    invoke-virtual/range {v4 .. v10}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_1a

    iget-object v4, v1, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityStack;->mSourceBoundFromIntent:Landroid/graphics/Rect;

    if-nez v4, :cond_18

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HomeStack()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", sourceBound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v4, v11}, Lcom/android/server/wm/gwm;->ibl(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/server/wm/gwm;->qeg:Z

    if-eqz v6, :cond_19

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/gwm;->j:Landroid/view/DisplayInfo;

    iget v10, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v8, v7, v7, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v6, v8, v4, v5}, Lcom/android/server/wm/gwm;->gwm(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    if-nez v4, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRotateEnterAnimation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_19
    move-object v4, v5

    goto :goto_b

    :cond_1a
    const-string v5, "HomeStack()=null"

    invoke-static {v12, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-object v5, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/gwm;->ugm:I

    iget v8, v1, Lcom/android/server/wm/gwm;->vdb:I

    if-eqz v4, :cond_1b

    iget v6, v4, Landroid/graphics/Point;->x:I

    move v9, v6

    goto :goto_c

    :cond_1b
    const/4 v9, 0x0

    :goto_c
    if-eqz v4, :cond_1c

    iget v4, v4, Landroid/graphics/Point;->y:I

    move v10, v4

    goto :goto_d

    :cond_1c
    const/4 v10, 0x0

    :goto_d
    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v4, v5

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v18, v12

    const/16 v17, 0x1

    move/from16 v12, v16

    invoke-virtual/range {v4 .. v12}, Landroid/view/animation/Animation;->initialize(IIIIIIII)V

    iget-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/gwm;->ugm:I

    iget v8, v1, Lcom/android/server/wm/gwm;->vdb:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/view/animation/Animation;->initialize(IIIIIIII)V

    goto :goto_f

    :cond_1d
    :goto_e
    move-object/from16 v18, v12

    const/16 v17, 0x1

    iget-object v4, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/gwm;->ugm:I

    iget v6, v1, Lcom/android/server/wm/gwm;->vdb:I

    invoke-virtual {v4, v13, v14, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/gwm;->ugm:I

    iget v6, v1, Lcom/android/server/wm/gwm;->vdb:I

    invoke-virtual {v4, v13, v14, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_f
    iget-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v4, v1, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v4, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v4, v1, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v4}, Lcom/android/server/wm/gwm;->ugm(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/wm/gwm;->hmo:Landroid/view/animation/Animation;

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v4, v1, Lcom/android/server/wm/gwm;->hmo:Landroid/view/animation/Animation;

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iput-boolean v5, v1, Lcom/android/server/wm/gwm;->lqr:Z

    iput-boolean v5, v1, Lcom/android/server/wm/gwm;->veq:Z

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/server/wm/gwm;->cgv:J

    if-eqz v15, :cond_1e

    iget-object v4, v1, Lcom/android/server/wm/gwm;->ire:Landroid/view/animation/Animation;

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v2, v1, Lcom/android/server/wm/gwm;->ire:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_1e
    if-eqz v15, :cond_1f

    iget-object v0, v1, Lcom/android/server/wm/gwm;->qbh:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_1f

    :try_start_0
    new-instance v5, Landroid/graphics/Rect;

    neg-int v0, v13

    neg-int v2, v14

    mul-int/lit8 v3, v13, 0x2

    mul-int/lit8 v4, v14, 0x2

    invoke-direct {v5, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/android/server/wm/BlackFrame;

    iget-object v2, v1, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    const v7, 0x1eab90

    iget-object v8, v1, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/android/server/wm/gwm;->wtn:Landroid/view/SurfaceControl;

    move-object v2, v0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/BlackFrame;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V

    iput-object v0, v1, Lcom/android/server/wm/gwm;->qbh:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    const-string v2, "Unable to allocate black surface"

    move-object/from16 v3, v18

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_10
    iget-object v0, v1, Lcom/android/server/wm/gwm;->bud:Lcom/android/server/wm/gwm$zta;

    if-eqz v15, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/gwm$zta;->bio()V

    goto :goto_11

    :cond_20
    invoke-virtual {v0}, Lcom/android/server/wm/gwm$zta;->gck()V

    :goto_11
    return v17

    :cond_21
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic qbh(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->ire:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->hmo:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/wm/gwm;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->sis:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private ugm(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAppLaunchOverlayAlphaAnimationLocked(): appFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpLandscapeAppAnimationImprovement"

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget-object p0, p0, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v2
.end method

.method private vdb(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/animation/Animation;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    if-eqz p2, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    move v5, v11

    :goto_0
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    add-int/2addr v3, v5

    add-int/2addr v2, v4

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    goto :goto_2

    :cond_2
    move v4, v11

    :goto_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x10

    goto :goto_3

    :cond_3
    move v6, v11

    :goto_3
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    goto :goto_4

    :cond_4
    move v7, v11

    :goto_4
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    move v12, v8

    goto :goto_5

    :cond_5
    move v12, v11

    :goto_5
    if-lez v9, :cond_6

    int-to-float v5, v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v14, 0x40400000    # 3.0f

    div-float/2addr v8, v14

    mul-float/2addr v8, v5

    float-to-int v14, v8

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v15, v2, v1

    new-instance v8, Lcom/android/server/wm/cjf/you;

    add-int v4, v3, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v6, v0, Lcom/android/server/wm/gwm;->g:Landroid/view/animation/Interpolator;

    move-object v1, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v9

    move-object/from16 v16, v6

    move v6, v14

    move-object v13, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/cjf/you;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/server/wm/gwm;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x150

    invoke-virtual {v13, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v14

    int-to-float v5, v11

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v4, v0, Lcom/android/server/wm/gwm;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/server/wm/cjf/sis;

    add-int/2addr v12, v15

    invoke-direct {v1, v15, v12, v11, v10}, Lcom/android/server/wm/cjf/sis;-><init>(IIII)V

    iget-object v2, v0, Lcom/android/server/wm/gwm;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x118

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x54

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, v0, Lcom/android/server/wm/gwm;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    invoke-virtual {v0, v9, v10, v9, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method static synthetic wtn(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/BlackFrame;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->qbh:Lcom/android/server/wm/BlackFrame;

    return-object p0
.end method

.method static synthetic ywr(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private zgw(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;FLandroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/gwm;->rtg:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lcom/android/server/wm/gwm;->rtg:[F

    const/4 v0, 0x2

    aget v0, p2, v0

    const/4 v1, 0x5

    aget p2, p2, v1

    iget-boolean v1, p0, Lcom/android/server/wm/gwm;->vju:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/gwm;->oxb:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/gwm;->oxb:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/server/wm/gwm;->rtg:[F

    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x3

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->fto:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/gwm;->irq:F

    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/gwm;->oxb(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    iget-object p1, p0, Lcom/android/server/wm/gwm;->zta:Landroid/util/BoostFramework;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/android/server/wm/gwm;->you:Z

    if-nez p2, :cond_1

    const/16 p2, 0x1090

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wm/gwm;->you:Z

    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/OnePlusPerfManager;->setAnimThreadToUx(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/wm/gwm;->fto:Z

    if-nez p1, :cond_3

    return v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/gwm;->veq:Z

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->fto:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean p0, p0, Lcom/android/server/wm/gwm;->lqr:Z

    const-wide v0, 0x10800000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->kth:Landroid/view/animation/Transformation;

    return-object p0
.end method

.method public hasScreenshot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/gwm;->bud:Lcom/android/server/wm/gwm$zta;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/gwm$zta;->tsu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRotating()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/gwm;->zgw:I

    iget p0, p0, Lcom/android/server/wm/gwm;->gwm:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kill()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/gwm;->bud:Lcom/android/server/wm/gwm$zta;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/gwm$zta;->zta()V

    iput-object v1, p0, Lcom/android/server/wm/gwm;->bud:Lcom/android/server/wm/gwm$zta;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    const-string v2, ": DESTROY"

    const-string v3, "  FREEZE "

    const-string v4, "OpLandscapeAppAnimationImprovement"

    if-eqz v0, :cond_7

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/gwm;->wtn:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/gwm;->wtn:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/gwm;->wtn:Landroid/view/SurfaceControl;

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    iput-object v1, p0, Lcom/android/server/wm/gwm;->dma:Landroid/view/SurfaceControl;

    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/gwm;->igw:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    iput-object v1, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/gwm;->qbh:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    iput-object v1, p0, Lcom/android/server/wm/gwm;->qbh:Lcom/android/server/wm/BlackFrame;

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/gwm;->ire:Landroid/view/animation/Animation;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/gwm;->ire:Landroid/view/animation/Animation;

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/gwm;->hmo:Landroid/view/animation/Animation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/gwm;->hmo:Landroid/view/animation/Animation;

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/gwm;->zta:Landroid/util/BoostFramework;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/gwm;->you:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    iput-boolean v1, p0, Lcom/android/server/wm/gwm;->you:Z

    :cond_10
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/OnePlusPerfManager;->setAnimThreadToUx(Z)V

    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->gck:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceOverlay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->ywr:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/gwm;->bvj:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/gwm;->ibl:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->qbh:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->qbh:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/gwm;->zgw:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/gwm;->gwm:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/gwm;->ugm:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/gwm;->vdb:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->fto:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->lqr:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->veq:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/gwm;->cgv:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->cjf:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/gwm;->ssp:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/gwm;->ear:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->cno:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->kth:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->bio:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->vju:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->vju:Z

    if-eqz v0, :cond_1

    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->obl:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/gwm;->oxb:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppTransitTo="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->vdw:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppLaunch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->qeg:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppFinish="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->ivd:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppFinishWithHomeGesture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->d:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKeyguardLaunch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->a:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppLaunchFromRecents="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/gwm;->b:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mIsActivityHomeTypeRotation="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/wm/gwm;->c:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 3

    iput p2, p0, Lcom/android/server/wm/gwm;->zgw:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/gwm;->bvj:I

    iget v1, p0, Lcom/android/server/wm/gwm;->ibl:I

    iget-object v2, p0, Lcom/android/server/wm/gwm;->bio:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/android/server/wm/utils/RotationAnimationUtils;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/android/server/wm/gwm;->bio:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/gwm;->zgw(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;FLandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/server/wm/gwm;->bio:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/gwm;->obl(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    return-void
.end method
