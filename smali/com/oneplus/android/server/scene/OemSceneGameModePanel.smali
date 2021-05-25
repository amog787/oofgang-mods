.class public Lcom/oneplus/android/server/scene/OemSceneGameModePanel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;
    }
.end annotation


# static fields
.field private static final bvj:Ljava/lang/String; = "-1"

.field private static cjf:Lcom/oneplus/android/server/scene/cno; = null

.field private static ear:Landroid/view/View; = null

.field private static final gwm:Ljava/lang/String; = "1"

.field private static final ibl:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final obl:Landroid/net/Uri;

.field private static final oif:Ljava/lang/String; = "OemSceneGameModePanel"

.field private static oxb:Lcom/oneplus/android/server/scene/cno; = null

.field private static final ugm:J = 0x1f4L

.field private static final vdb:J = 0x5dcL

.field private static final zgw:Z


# instance fields
.field private bio:Landroid/os/Handler;

.field private cno:Lcom/android/server/wm/WindowManagerInternal;

.field private dma:Z

.field private gck:Ljava/lang/String;

.field private igw:Lcom/oneplus/android/server/scene/you;

.field private kth:Lcom/oneplus/android/server/scene/cno;

.field private qbh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Landroid/animation/ValueAnimator;

.field private sis:Landroid/content/Context;

.field private ssp:Landroid/view/IWindowManager;

.field private tsu:Landroid/animation/ValueAnimator;

.field private wtn:Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;

.field private you:Landroid/view/WindowManager$LayoutParams;

.field private ywr:Z

.field private zta:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zgw:Z

    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->obl:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->oxb:Lcom/oneplus/android/server/scene/cno;

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cjf:Lcom/oneplus/android/server/scene/cno;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zta:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->igw:Lcom/oneplus/android/server/scene/you;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->gck:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->dma:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ywr:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->qbh:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bio:Landroid/os/Handler;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zta:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ssp:Landroid/view/IWindowManager;

    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cno:Lcom/android/server/wm/WindowManagerInternal;

    const/4 p2, 0x2

    new-array v1, p2, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ear()V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->oxb()V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cjf()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    const-class v2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->igw(Landroid/content/Context;)Lcom/oneplus/android/server/scene/you;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->igw:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {p2, p0}, Lcom/oneplus/android/server/scene/you;->ugm(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    new-instance p2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bio:Landroid/os/Handler;

    invoke-direct {p2, p0, p1, v1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->wtn:Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->obl:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->wtn:Lcom/oneplus/android/server/scene/OemSceneGameModePanel$bio;

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ugm()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic bio()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zgw:Z

    return v0
.end method

.method private bud()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$you;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$you;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cgv()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->vju(Z)V

    return-void
.end method

.method private cjf()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->dma:Z

    return p0
.end method

.method private ear()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$cno;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$cno;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private gwm(Landroid/view/View;II)Z
    .locals 2

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private hmo(Z)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    if-eqz p1, :cond_0

    const-string p0, "OemSceneGameModePanel"

    const-string p1, "There is gaming mode UI shown. Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->lqr()V

    return-void
.end method

.method private ibl(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->tsu:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->cgv()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zta:Landroid/view/WindowManager;

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->igw:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/you;->gck()V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ear:Landroid/view/View;

    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->dma:Z

    return p1
.end method

.method private lqr()V
    .locals 8

    new-instance v0, Lcom/oneplus/android/server/scene/ssp;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    const v2, 0x50b0080

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/oneplus/android/server/scene/ssp;-><init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/OemSceneGameModePanel;Z)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    const v1, 0x508006e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    const v4, 0x5080070

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->wtn(Ljava/lang/String;)Z

    move-result v0

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/oneplus/android/server/scene/ssp;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    const v4, 0x50b0081

    invoke-direct {v0, v1, v4, p0, v3}, Lcom/oneplus/android/server/scene/ssp;-><init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/OemSceneGameModePanel;Z)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/oneplus/android/server/scene/ssp;

    iget-object v4, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    invoke-direct {v1, v4, v2, p0, v3}, Lcom/oneplus/android/server/scene/ssp;-><init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/OemSceneGameModePanel;Z)V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceNotFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneGameModePanel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d8

    const/16 v6, 0x8

    const/4 v7, -0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "GameModeMsg"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zta:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->igw()V

    return-void
.end method

.method private oxb()V
    .locals 0

    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zta:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Lcom/oneplus/android/server/scene/cno;)Lcom/oneplus/android/server/scene/cno;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    return-object p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ibl(Z)V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    return-object p0
.end method

.method private ugm()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->qbh:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Support haptic feedback app list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->qbh:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneGameModePanel"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private vju(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$rtg;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$rtg;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private wtn(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-ne v0, p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    return-object p0
.end method

.method public static ywr()I
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ear:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bio:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public bvj()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ywr:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ibl(Z)V

    return-void
.end method

.method public dma()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bio:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$tsu;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$tsu;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zgw:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current fg pgk: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OemSceneGameModePanel"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->gck:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->gck:Ljava/lang/String;

    iget-object p3, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bio:Landroid/os/Handler;

    new-instance p2, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$zta;

    invoke-direct {p2, p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$zta;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public fto(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ywr:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ibl(Z)V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->lqr()V

    return-void
.end method

.method public gck(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ibl(Z)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ywr:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->hmo(Z)V

    :cond_0
    return-void
.end method

.method protected igw()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bud()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->vju(Z)V

    return-void
.end method

.method public ire()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ywr:Z

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    if-eqz v1, :cond_0

    const-string p0, "OemSceneGameModePanel"

    const-string v0, "There is gaming mode UI shown. Ignore."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->hmo(Z)V

    return-void
.end method

.method public les(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->lqr()V

    return-void
.end method

.method public obl(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->qbh:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public oif()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->zta:Landroid/view/WindowManager;

    return-object p0
.end method

.method public qbh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->gck:Ljava/lang/String;

    return-object p0
.end method

.method public vdb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->dma:Z

    return p0
.end method

.method public veq(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string v0, "esport_mode_enable_trigger"

    const-string v1, "1"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public zgw()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->kth:Lcom/oneplus/android/server/scene/cno;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
