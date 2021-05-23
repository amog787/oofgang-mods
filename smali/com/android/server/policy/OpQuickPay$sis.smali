.class Lcom/android/server/policy/OpQuickPay$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpQuickPay;->enableQuickPayButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:I

.field private sis:F

.field final synthetic ssp:Lcom/android/server/policy/OpQuickPay;

.field private tsu:F

.field private you:I

.field private zta:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpQuickPay;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iput p2, p0, Lcom/android/server/policy/OpQuickPay$sis;->rtg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v8, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "scaleY"

    const-string v2, "scaleX"

    const-wide/16 v9, 0xe1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v13, :cond_2

    if-eq v0, v11, :cond_0

    return v12

    :cond_0
    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->zta:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v8, Lcom/android/server/policy/OpQuickPay$sis;->sis:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->you:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, v8, Lcom/android/server/policy/OpQuickPay$sis;->tsu:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    invoke-static {v0}, Lcom/android/server/policy/OpQuickPay;->access$400(Lcom/android/server/policy/OpQuickPay;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v2, v1, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnView:Landroid/view/View;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return v13

    :cond_2
    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v3, v0, Lcom/android/server/policy/OpQuickPay;->mFloatingButtonBG:Landroid/widget/ImageView;

    new-array v4, v11, [Landroid/animation/PropertyValuesHolder;

    new-array v5, v13, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v12

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v4, v12

    new-array v2, v13, [F

    aput v6, v2, v12

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v4, v13

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->zta:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v8, Lcom/android/server/policy/OpQuickPay$sis;->you:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-int/2addr v0, v1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_7

    const-wide/16 v0, 0xfa

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    invoke-static {}, Lcom/android/server/policy/OpQuickPay;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show switch dialog mQuickPayWhich="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget v2, v2, Lcom/android/server/policy/OpQuickPay;->mQuickPayWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_7

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/OpThemeUtils;->getInstance(Landroid/content/Context;)Landroid/content/res/OpThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OpThemeUtils;->getThemeState()I

    move-result v0

    if-ne v0, v13, :cond_4

    const v0, 0x5100013

    goto :goto_0

    :cond_4
    const v0, 0x510000b

    :goto_0
    new-instance v14, Landroid/app/AlertDialog$Builder;

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->mContext:Landroid/content/Context;

    invoke-direct {v14, v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x50f0150

    invoke-virtual {v14, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    invoke-static {v1}, Lcom/android/server/policy/OpQuickPay;->access$200(Lcom/android/server/policy/OpQuickPay;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    move v1, v12

    move v7, v1

    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/OpQuickPay$tsu;

    iget v3, v2, Lcom/android/server/policy/OpQuickPay$tsu;->zta:I

    iget-object v4, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget v4, v4, Lcom/android/server/policy/OpQuickPay;->mQuickPayWhich:I

    if-ne v3, v4, :cond_5

    move v7, v1

    :cond_5
    iget-object v2, v2, Lcom/android/server/policy/OpQuickPay$tsu;->igw:Ljava/lang/String;

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v6, Lcom/android/server/policy/OpQuickPay$sis$zta;

    const v3, 0x50b0089

    const v4, 0x5080165

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v9, v6

    move v6, v7

    move v10, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/OpQuickPay$sis$zta;-><init>(Lcom/android/server/policy/OpQuickPay$sis;Landroid/content/Context;II[Ljava/lang/String;ILjava/util/ArrayList;)V

    new-instance v0, Lcom/android/server/policy/OpQuickPay$sis$you;

    invoke-direct {v0, v8, v15}, Lcom/android/server/policy/OpQuickPay$sis$you;-><init>(Lcom/android/server/policy/OpQuickPay$sis;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "QuickPayChooser"

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/server/policy/OpQuickPay$sis$sis;

    invoke-direct {v1, v8}, Lcom/android/server/policy/OpQuickPay$sis$sis;-><init>(Lcom/android/server/policy/OpQuickPay$sis;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_7
    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v0, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Lcom/android/server/policy/OpQuickPay;->mScreenWidth:I

    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_8

    iget v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->rtg:I

    goto :goto_2

    :cond_8
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iget v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->rtg:I

    sub-int/2addr v0, v1

    :goto_2
    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    new-array v2, v11, [I

    iget-object v3, v1, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v3, v2, v12

    aput v0, v2, v13

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/policy/OpQuickPay;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/server/policy/OpQuickPay$sis$tsu;

    invoke-direct {v2, v8}, Lcom/android/server/policy/OpQuickPay$sis$tsu;-><init>(Lcom/android/server/policy/OpQuickPay$sis;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xe1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iput v0, v1, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnX:I

    iget-object v0, v1, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v1, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnY:I

    iget-object v0, v1, Lcom/android/server/policy/OpQuickPay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget v2, v2, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget v2, v2, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickpay_button_xy"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return v13

    :cond_9
    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_a
    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v3, v0, Lcom/android/server/policy/OpQuickPay;->mFloatingButtonBG:Landroid/widget/ImageView;

    new-array v4, v11, [Landroid/animation/PropertyValuesHolder;

    new-array v5, v13, [F

    const v6, 0x3f8ccccd    # 1.1f

    aput v6, v5, v12

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v4, v12

    new-array v2, v13, [F

    aput v6, v2, v12

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v4, v13

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v8, Lcom/android/server/policy/OpQuickPay$sis;->zta:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->you:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->sis:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v8, Lcom/android/server/policy/OpQuickPay$sis;->tsu:F

    return v13
.end method
