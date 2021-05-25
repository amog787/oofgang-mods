.class public Lcom/android/server/wm/vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpQuickReply;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/vdb$gck;,
        Lcom/android/server/wm/vdb$wtn;,
        Lcom/android/server/wm/vdb$igw;
    }
.end annotation


# static fields
.field public static final A:I = 0x12c

.field public static final B:I = 0x64

.field public static C:I = 0x12c

.field public static D:I = 0x64

.field private static final E:I = 0x0

.field private static final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static H:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static I:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static J:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static K:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "Quick_Reply_Config"

.field private static final b:Ljava/lang/String; = "com.oneplus.action.QUICK_REPLY_SETTINGS"

.field private static final c:Ljava/lang/String; = "com.android.settings"

.field public static final d:F = 0.4f

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x32f

.field public static final i:I = 0x60

.field private static ivd:Ljava/lang/Object; = null

.field public static final j:I = 0x54

.field public static final k:I = 0x2a

.field public static final l:I = 0x3c

.field public static final m:I = 0x30

.field public static n:I = 0x32f

.field public static o:I = 0x60

.field public static p:I = 0x54

.field public static q:I = 0x2a

.field private static qeg:Lcom/android/server/wm/vdb; = null

.field public static r:I = 0x3c

.field public static s:I = 0x30

.field public static final t:I = 0x28

.field public static final u:I = 0x28

.field public static final v:I = 0x28

.field private static final vdw:Ljava/lang/String; = "OpQuickReply"

.field public static w:I = 0x438

.field public static x:I = 0x28

.field public static y:I = 0x28

.field public static z:I = 0x28


# instance fields
.field private bio:Landroid/view/WindowManager$LayoutParams;

.field bud:Landroid/view/View;

.field private bvj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field cgv:Landroid/view/View;

.field private cjf:I

.field private cno:Lcom/android/server/wm/vdb$gck;

.field private dma:Lcom/android/server/wm/vdb$igw;

.field private ear:I

.field private fto:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gck:Landroid/view/WindowManager$LayoutParams;

.field public gwm:Lcom/android/server/wm/DisplayFrames;

.field private final hmo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ibl:Z

.field private igw:Landroid/view/WindowManager$LayoutParams;

.field private ire:I

.field irq:Landroid/widget/FrameLayout;

.field private kth:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field les:Landroid/widget/FrameLayout;

.field private lqr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private obl:I

.field private oif:Lcom/android/server/wm/ActivityRecord;

.field private oxb:I

.field private qbh:I

.field private rtg:Lcom/android/server/wm/WindowManagerService;

.field private sis:Landroid/content/Context;

.field private ssp:Lcom/android/server/am/ActivityManagerService;

.field private tsu:Landroid/view/WindowManager;

.field private ugm:Lcom/android/internal/view/IInputMethodManager;

.field private vdb:Lcom/oneplus/config/ConfigObserver;

.field veq:Landroid/view/View;

.field vju:Landroid/view/View;

.field private wtn:Landroid/view/WindowManager$LayoutParams;

.field private you:Z

.field private ywr:I

.field private zgw:I

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/vdb;->ivd:Ljava/lang/Object;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.google.android.permissioncontroller"

    const-string v4, "com.android.permissioncontroller"

    const-string v5, "com.oneplus.applocker"

    const-string v6, "com.android.systemui"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/vdb;->F:Ljava/util/List;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.google.android.permissioncontroller"

    const-string v4, "com.android.permissioncontroller"

    const-string v5, "com.oneplus.applocker"

    const-string v6, "com.android.systemui"

    const-string v7, "com.whatsapp"

    const-string v8, "com.instagram.android"

    const-string v9, "com.tencent.mm"

    const-string v10, "com.tencent.mobileqq"

    const-string v11, "com.facebook.mlite"

    const-string v12, "com.tencent.mobileqqi"

    const-string v13, "com.tencent.qqlite"

    const-string v14, "com.tencent.tim"

    const-string v15, "org.telegram.messenger"

    const-string v16, "org.thunderdog.challegram"

    const-string v17, "com.whatsapp.w4b"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/vdb;->G:Ljava/util/List;

    const-string v1, "com.baidu.input_yijia"

    const-string v2, "com.android.inputmethod.latin"

    const-string v3, "com.google.android.inputmethod.pinyin"

    const-string v4, "com.google.android.apps.handwriting.ime"

    const-string v5, "com.google.android.inputmethod.latin"

    const-string v6, "com.touchtype.swiftkey"

    const-string v7, "com.jb.emoji.gokeyboard"

    const-string v8, "com.jb.gokeyboard"

    const-string v9, "com.cootek.smartinputv5"

    const-string v10, "abc.apple.emoji.theme.gif.keyboard"

    const-string v11, "com.emoji.keyboard.touchpal"

    const-string v12, "com.grammarly.android.keyboard"

    const-string v13, "com.syntellia.fleksy.keyboard"

    const-string v14, "com.gamelounge.chroomakeyboard"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/vdb;->H:Ljava/util/List;

    const-string v0, "com.iflytek.inputmethod.oneplus"

    const-string v1, "com.baidu.input"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/vdb;->I:Ljava/util/List;

    const-string v1, "com.tencent.mm/.plugin.mmsight.ui.SightCaptureUI"

    const-string v2, "com.tencent.mm/.plugin.recordvideo.activity.MMRecordUI"

    const-string v3, "com.tencent.tim/com.tencent.av.ui.AVActivity"

    const-string v4, "com.tencent.mobileqqi/com.tencent.av.ui.AVActivity"

    const-string v5, "com.tencent.mm/.plugin.voip.ui.VideoActivity"

    const-string v6, "com.instagram.android/com.instagram.modal.TransparentModalActivity"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/vdb;->J:Ljava/util/List;

    const-string v0, "com.instagram.android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/vdb;->K:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/vdb;->zta:Z

    iput-boolean v0, p0, Lcom/android/server/wm/vdb;->you:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/vdb;->ywr:I

    iput v1, p0, Lcom/android/server/wm/vdb;->qbh:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/vdb;->bvj:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/vdb;->ibl:Z

    const-string v2, "persist.quickreply.imeside"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/vdb;->oxb:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->hmo:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->fto:Ljava/util/ArrayList;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/vdb;->lqr:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    iput v1, p0, Lcom/android/server/wm/vdb;->obl:I

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/android/server/wm/vdb;
    .locals 2

    const-class v0, Lcom/android/server/wm/vdb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/vdb;->qeg:Lcom/android/server/wm/vdb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/vdb;

    invoke-direct {v1, p0}, Lcom/android/server/wm/vdb;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/wm/vdb;->qeg:Lcom/android/server/wm/vdb;

    :cond_0
    sget-object p0, Lcom/android/server/wm/vdb;->qeg:Lcom/android/server/wm/vdb;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic bio(Lcom/android/server/wm/vdb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/vdb;->vju(I)V

    return-void
.end method

.method private bud(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->fto:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->veq()V

    return-void
.end method

.method private c()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/vdb;->tsu:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/vdb;->tsu:Landroid/view/WindowManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/vdb;->tsu:Landroid/view/WindowManager;

    return-object p0
.end method

.method private cgv()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->q()V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x50b008a

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    new-instance v3, Lcom/android/server/wm/vdb$sis;

    invoke-direct {v3, p0}, Lcom/android/server/wm/vdb$sis;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/vdb$tsu;

    invoke-direct {v3, p0}, Lcom/android/server/wm/vdb$tsu;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->q()V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x50b008b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    new-instance v1, Lcom/android/server/wm/vdb$rtg;

    invoke-direct {v1, p0}, Lcom/android/server/wm/vdb$rtg;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->q()V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x50b008c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    new-instance v1, Lcom/android/server/wm/vdb$ssp;

    invoke-direct {v1, p0}, Lcom/android/server/wm/vdb$ssp;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/vdb;->wtn:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method static synthetic cjf(Lcom/android/server/wm/vdb;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/vdb;->oxb:I

    return p0
.end method

.method static synthetic cno(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->cgv()V

    return-void
.end method

.method private d()V
    .locals 3

    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/vdb;->ugm:Lcom/android/internal/view/IInputMethodManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OpQuickReplyThread"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/wm/vdb$igw;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/vdb$igw;-><init>(Lcom/android/server/wm/vdb;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    new-instance v0, Lcom/android/server/wm/vdb$gck;

    iget-object v1, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/vdb$gck;-><init>(Lcom/android/server/wm/vdb;Lcom/android/server/wm/vdb$igw;)V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->cno:Lcom/android/server/wm/vdb$gck;

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->p()V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->vdw()V

    return-void
.end method

.method private e(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/vdb;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sget p1, Lcom/android/server/wm/vdb;->w:I

    sget v0, Lcom/android/server/wm/vdb;->D:I

    sub-int/2addr p1, v0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic ear(Lcom/android/server/wm/vdb;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/vdb;->oxb:I

    return p1
.end method

.method private f(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/wm/vdb;->H:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic fto(Lcom/android/server/wm/vdb;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/vdb;->ugm:Lcom/android/internal/view/IInputMethodManager;

    const-string v1, "OpQuickReply"

    if-nez v0, :cond_0

    const-string p0, "InputMethodManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->veq()V

    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_3

    const-string v4, "killIMEs start"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/vdb;->irq()V

    invoke-direct {p0, v2}, Lcom/android/server/wm/vdb;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/wm/vdb;->bud(I)V

    iget-object v4, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2, v0}, Lcom/android/server/am/ActivityManagerService;->killApplicationProcess(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killIMEs for freeform app killing target:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mFocusedApp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/vdb;->ugm:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/wm/vdb;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_7

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v6}, Lcom/android/server/wm/vdb;->bud(I)V

    iget-object v6, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v5, v4}, Lcom/android/server/am/ActivityManagerService;->killApplicationProcess(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killIMEs for freeform app killing:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "killIMEs failed:"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return-void
.end method

.method static synthetic gck(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->t()V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/wm/vdb;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/vdb;->o(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private h()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickreply_ime_unsupported"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/vdb;->hmo:Landroid/util/ArrayMap;

    aget-object v6, v4, v2

    const/4 v7, 0x1

    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImeRecord pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v7

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpQuickReply"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic hmo(Lcom/android/server/wm/vdb;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/vdb;->cjf:I

    return p1
.end method

.method private i()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->j()V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_4
    iput-object v1, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    :cond_5
    return-void
.end method

.method static synthetic ibl(Lcom/android/server/wm/vdb;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/vdb;->qeg(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->j()V

    return-void
.end method

.method static synthetic ire(Lcom/android/server/wm/vdb;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/vdb;->cjf:I

    return p0
.end method

.method private irq()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->fto:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private ivd()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private k(Lorg/json/JSONArray;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p0, "OpQuickReply"

    const-string v0, "[OnlineConfig] update config start"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "op_quick_reply_ime_package_config"

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_1

    const-string v7, "OpQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add ime package config pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "op_quick_reply_camera_activity_config"

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_3

    const-string v7, "OpQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add camera activity config name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object p1, Lcom/android/server/wm/vdb;->ivd:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    sput-object p0, Lcom/android/server/wm/vdb;->H:Ljava/util/List;

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_7

    sput-object v0, Lcom/android/server/wm/vdb;->J:Ljava/util/List;

    :cond_7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "OpQuickReply"

    const-string p1, "[OnlineConfig] update config complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] QuickReplyConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] QuickReplyConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpQuickReply"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method static synthetic kth(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->i()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic lqr(Lcom/android/server/wm/vdb;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/vdb;->ire:I

    return p0
.end method

.method private m(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "OpQuickReply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQuickReplyResumed focusedApp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pkgName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x0

    if-eqz v1, :cond_5

    iput-object p2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/vdb;->isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string v2, "com.oneplus.applocker"

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "OP_APP_LOCKER_COMPONENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, p1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/vdb;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_4

    const-string p2, "OpQuickReply"

    const-string v2, "Donot enter QuickReply mode AppLocker-Non QuickReply case"

    invoke-static {p2, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move p1, p2

    :cond_4
    :goto_1
    iput-boolean p1, v1, Lcom/android/server/wm/ActivityRecord;->mIsQuickReplyApp:Z

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->setQuickReplyRunning(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private n(Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/vdb;->zta:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sget v2, Lcom/android/server/wm/vdb;->C:I

    add-int/2addr p1, v2

    sget v2, Lcom/android/server/wm/vdb;->w:I

    if-le p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/wm/vdb;->e(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    const/4 v2, 0x7

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_3
    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_5
    return v1
.end method

.method private o(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-nez v0, :cond_5

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/vdb;->you:Z

    iget-object p1, p0, Lcom/android/server/wm/vdb;->bvj:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    const-string v1, "OpQuickReply"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitFreeformMode for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " task="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitFreeformMode fail to exit freeform for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/vdb;->bvj:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/vdb;->you:Z

    :cond_5
    return-void
.end method

.method static synthetic obl(Lcom/android/server/wm/vdb;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method static synthetic oif(Lcom/android/server/wm/vdb;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/vdb;->r(Z)V

    return-void
.end method

.method static synthetic oxb(Lcom/android/server/wm/vdb;)Lcom/android/server/wm/vdb$igw;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    return-object p0
.end method

.method private p()V
    .locals 12

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/vdb;->ywr:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/wm/vdb;->qbh:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/vdb;->ywr:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/vdb;->qbh:I

    sput v0, Lcom/android/server/wm/vdb;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    const v1, 0x444bc000    # 815.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->n:I

    const/high16 v1, 0x42c00000    # 96.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->o:I

    const/high16 v1, 0x42a80000    # 84.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->p:I

    const/high16 v1, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->q:I

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->r:I

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->s:I

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/android/server/wm/vdb;->x:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/android/server/wm/vdb;->y:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->z:I

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/vdb;->C:I

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/android/server/wm/vdb;->D:I

    iget v0, p0, Lcom/android/server/wm/vdb;->ywr:I

    const/16 v1, 0x870

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    sput v2, Lcom/android/server/wm/vdb;->z:I

    sput v2, Lcom/android/server/wm/vdb;->y:I

    sput v2, Lcom/android/server/wm/vdb;->x:I

    const/16 v0, 0x30

    sput v0, Lcom/android/server/wm/vdb;->s:I

    sput v0, Lcom/android/server/wm/vdb;->r:I

    sput v0, Lcom/android/server/wm/vdb;->q:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/vdb;->r(Z)V

    :goto_0
    const-string v0, "persist.override.quickreply.imwidth"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "persist.override.quickreply.imewidth"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "OpQuickReply"

    if-lez v1, :cond_2

    sput v1, Lcom/android/server/wm/vdb;->w:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override IME width to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/vdb;->w:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-lez v0, :cond_3

    sput v0, Lcom/android/server/wm/vdb;->n:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override IM width to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/vdb;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/vdb;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.quickreply.imewidth"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update sIMLimitWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/vdb;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sIMELimitWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/vdb;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7d3

    const v10, 0x1000508

    const/4 v11, -0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/server/wm/vdb;->q:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x5100024

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v1, "QuickReplyGoFull"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x12

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "QuickReplyGoSettings"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->wtn:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->wtn:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "QuickReplySwitch"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7dc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "QuickReplyIMEcontrols"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->s()V

    return-void
.end method

.method private q()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->ivd()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/vdb;->oxb:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/server/wm/vdb;->r:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/android/server/wm/vdb;->o:I

    add-int/2addr v1, v2

    sget v3, Lcom/android/server/wm/vdb;->s:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->wtn:Landroid/view/WindowManager$LayoutParams;

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/wm/vdb;->o:I

    mul-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/vdb;->r:I

    add-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/vdb;->s:I

    add-int/2addr v3, v2

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/wm/vdb;->ywr:I

    sget v3, Lcom/android/server/wm/vdb;->o:I

    mul-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/vdb;->r:I

    add-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/vdb;->s:I

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/wm/vdb;->o:I

    add-int/2addr v2, v3

    sget v4, Lcom/android/server/wm/vdb;->s:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->wtn:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->veq:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/vdb;->bio:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->vju:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/vdb;->igw:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bud:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/vdb;->wtn:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->p()V

    return-void
.end method

.method private qeg(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mIsQuickReplyApp:Z

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private r(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIMEMarginBottom force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpQuickReply"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/android/server/wm/vdb;->z:I

    :cond_0
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p1, 0x10501b1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/android/server/wm/vdb;->z:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/vdb;->zgw:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NavHeightOffset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/vdb;->zgw:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpQuickReply"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updated IMEMarginBottom: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/wm/vdb;->z:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpQuickReply"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/vdb;->zta:Z

    return p0
.end method

.method private s()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/android/server/wm/vdb;->oxb:I

    const/4 v4, 0x0

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/server/wm/vdb;->ywr:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ge v0, v3, :cond_1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v0, v3, :cond_2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/wm/vdb;->x:I

    sub-int/2addr v1, v3

    sget v5, Lcom/android/server/wm/vdb;->w:I

    sub-int/2addr v1, v5

    sget v5, Lcom/android/server/wm/vdb;->p:I

    sub-int/2addr v1, v5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/wm/vdb;->ire:I

    iput v4, p0, Lcom/android/server/wm/vdb;->ear:I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le v0, v4, :cond_3

    iput v0, p0, Lcom/android/server/wm/vdb;->ear:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/vdb;->ear:I

    if-le v0, v1, :cond_8

    iput v0, p0, Lcom/android/server/wm/vdb;->ear:I

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le v0, v4, :cond_5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v0, v3, :cond_6

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/wm/vdb;->y:I

    add-int/2addr v1, v3

    sget v4, Lcom/android/server/wm/vdb;->w:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/wm/vdb;->ear:I

    iget v0, p0, Lcom/android/server/wm/vdb;->ywr:I

    sget v1, Lcom/android/server/wm/vdb;->p:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/vdb;->ire:I

    iget-object v3, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v1

    if-le v0, v4, :cond_7

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/wm/vdb;->ire:I

    :cond_7
    iget v0, p0, Lcom/android/server/wm/vdb;->ire:I

    iget-object v1, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/wm/vdb;->p:I

    sub-int v4, v1, v3

    if-le v0, v4, :cond_8

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/wm/vdb;->ire:I

    :cond_8
    :goto_0
    iget v0, p0, Lcom/android/server/wm/vdb;->cjf:I

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/wm/vdb;->qbh:I

    sget v3, Lcom/android/server/wm/vdb;->z:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/vdb;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/vdb;->ear:I

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/wm/vdb;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method private t()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/vdb;->isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/vdb;->getImBound()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/vdb;->s()V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIMstack: mIMEposition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/vdb;->oxb:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " fail. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OpQuickReply"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->s()V

    return-void
.end method

.method private u(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateImeBtnVis to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpQuickReply"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic ugm(Lcom/android/server/wm/vdb;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/vdb;->k(Lorg/json/JSONArray;)V

    return-void
.end method

.method private v()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickreply_ime_adjust"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/vdb;->ibl:Z

    const-string v3, "OpQuickReply"

    if-eq v1, v2, :cond_1

    iput-boolean v2, p0, Lcom/android/server/wm/vdb;->ibl:Z

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->g()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings(), mImeAdjustEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/vdb;->ibl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "op_quickreply_im_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings(), imList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/vdb;->lqr:Ljava/util/List;

    :cond_3
    return-void
.end method

.method static synthetic vdb(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->v()V

    return-void
.end method

.method private vdw()V
    .locals 2

    const-string v0, "OpQuickReply"

    const-string v1, "dismissInputMethod"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->kth:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/vdb;->kth:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/vdb;->kth:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    :cond_1
    return-void
.end method

.method private veq()V
    .locals 0

    return-void
.end method

.method private vju(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->s()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/vdb;->oxb:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x50b008d

    goto :goto_0

    :cond_0
    const v0, 0x50b008e

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    iget-object p1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    const v0, 0x508016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/server/wm/vdb;->les:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    const v0, 0x5080168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/server/wm/vdb;->irq:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/server/wm/vdb$cno;

    invoke-direct {v0, p0}, Lcom/android/server/wm/vdb$cno;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/vdb$kth;

    invoke-direct {v0, p0}, Lcom/android/server/wm/vdb$kth;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->c()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/vdb;->cgv:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->l()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/vdb;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->hmo:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic ywr(Lcom/android/server/wm/vdb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/vdb;->u(I)V

    return-void
.end method

.method static synthetic zgw(Lcom/android/server/wm/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->g()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/vdb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/vdb;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oneplus.permissionutil"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add tapExcludedWindows for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpQuickReply"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oneplus.permissionutil"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove tapExcludedWindows for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpQuickReply"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public exitQuickReply()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitQuickReply pid="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpQuickReply"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/vdb;->n(Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 p1, 0x6

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public getIMDimAmount()F
    .locals 0

    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method

.method public getImBound()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->ivd()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/server/wm/vdb;->oxb:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    iget p0, v1, Landroid/graphics/Rect;->right:I

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/server/wm/vdb;->n:I

    sub-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p0, v1, Landroid/graphics/Rect;->left:I

    iput p0, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/server/wm/vdb;->n:I

    add-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-object v0
.end method

.method public getQuickReplyList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const-string p0, "OpQuickReply"

    const-string p1, "List not found "

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/vdb;->ibl:Z

    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/server/wm/vdb;->H:Ljava/util/List;

    :cond_1
    return-object v1

    :cond_2
    sget-object p0, Lcom/android/server/wm/vdb;->G:Ljava/util/List;

    return-object p0
.end method

.method public getQuickReplyOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/vdb;->zta:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getOrientation()I

    move-result p1

    if-ne p1, v1, :cond_0

    const-string p1, "OpQuickReply"

    const-string v0, "ExitQuickReply due to HOME is showing"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/vdb;->exitQuickReply()V

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/server/wm/vdb;->isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p2, Lcom/android/server/wm/ActivityRecord;->mIsQuickReplyApp:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/16 p1, 0x8

    :goto_0
    iput p1, p0, Lcom/android/server/wm/vdb;->obl:I

    return p1

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/server/wm/vdb;->obl:I

    return p0

    :cond_3
    return v1

    :cond_4
    const/4 p0, -0x2

    return p0
.end method

.method public isForceShowStatusBar(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.tencent.mobileqq"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.tencent.tim"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.tencent.mm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isInCameraActivityList(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/wm/vdb;->J:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInIMEKilledList(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb;->fto:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQuickReplyExiting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/vdb;->you:Z

    return p0
.end method

.method public isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/vdb;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/wm/vdb;->J:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_2
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public isQuickReplyIM(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App affinity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpQuickReply"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/wm/vdb;->F:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/wm/vdb;->G:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/vdb;->lqr:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public isQuickReplyIME(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/vdb;->ibl:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/wm/vdb;->H:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d3

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickReply"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wm/vdb;->zta:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_1

    const/16 v4, 0x3eb

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method public isQuickReplyRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/vdb;->zta:Z

    return p0
.end method

.method public killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/vdb;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    new-instance v1, Lcom/android/server/wm/vdb$bio;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/vdb$bio;-><init>(Lcom/android/server/wm/vdb;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public les()V
    .locals 5

    const-string v0, "OpQuickReply"

    const-string v1, "bootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->vdb:Lcom/oneplus/config/ConfigObserver;

    const-string v1, "Quick_Reply_Config"

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    new-instance v4, Lcom/android/server/wm/vdb$wtn;

    invoke-direct {v4, p0}, Lcom/android/server/wm/vdb$wtn;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/vdb;->vdb:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/vdb;->k(Lorg/json/JSONArray;)V

    return-void
.end method

.method public notifyImeShow(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/vdb;->ibl:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/vdb;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/vdb;->hmo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    new-instance v2, Lcom/android/server/wm/vdb$zta;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/vdb$zta;-><init>(Lcom/android/server/wm/vdb;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public notifyImeVisibilityChanged(ZI)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/vdb;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_0

    iget p2, p0, Lcom/android/server/wm/vdb;->qbh:I

    :cond_0
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    iget p0, p0, Lcom/android/server/wm/vdb;->zgw:I

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    sget p1, Lcom/android/server/wm/vdb;->z:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public onConfigChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/wm/vdb;->rtg:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/vdb;->gwm:Lcom/android/server/wm/DisplayFrames;

    return-void
.end method

.method public setKeyguardDone(Z)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/vdb;->ssp:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    invoke-virtual {p0}, Lcom/android/server/wm/vdb;->exitQuickReply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "OpQuickReply"

    const-string v2, "setKeyguardDone fail: "

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setQuickReplyRunning(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/wm/vdb;->zta:Z

    iget-object v0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    new-instance v1, Lcom/android/server/wm/vdb$you;

    invoke-direct {v1, p0}, Lcom/android/server/wm/vdb$you;-><init>(Lcom/android/server/wm/vdb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/server/wm/vdb;->zta:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    const-string v1, "sys.quickreplay.running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuickReplyRunning to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpQuickReply"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/vdb;->dma:Lcom/android/server/wm/vdb$igw;

    const/4 p1, 0x6

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public setResumedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    const-string v0, "OpQuickReply"

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip setResumedApp app="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumedApp app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/vdb;->m(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/vdb;->zta:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/vdb;->bvj:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/wm/vdb;->K:Ljava/util/List;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set force config for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/vdb;->bvj:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/vdb;->o(Lcom/android/server/wm/ActivityRecord;)V

    :cond_5
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/vdb;->oif:Lcom/android/server/wm/ActivityRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "setResumedApp fail: "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 3

    const-string v0, "sys.quickreplay.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->d()V

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->v()V

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickreply_imbutton_x"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/vdb;->cjf:I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickreply_ime_position"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/vdb;->oxb:I

    invoke-direct {p0}, Lcom/android/server/wm/vdb;->h()V

    return-void
.end method

.method public updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/vdb;->n(Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/server/wm/vdb;->w:I

    iget-object v0, p0, Lcom/android/server/wm/vdb;->gck:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mFocusedWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " width="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pos="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/vdb;->oxb:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OpQuickReply"

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p0, p0, Lcom/android/server/wm/vdb;->oxb:I

    if-nez p0, :cond_1

    sget p0, Lcom/android/server/wm/vdb;->p:I

    add-int/2addr v0, p0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iget p0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->right:I

    iput p0, p5, Landroid/graphics/Rect;->right:I

    iput p0, p4, Landroid/graphics/Rect;->right:I

    iput p0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iput v0, p6, Landroid/graphics/Rect;->right:I

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iput v0, p4, Landroid/graphics/Rect;->right:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget p0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->left:I

    iput p0, p5, Landroid/graphics/Rect;->left:I

    iput p0, p4, Landroid/graphics/Rect;->left:I

    iput p0, p3, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    sget p1, Lcom/android/server/wm/vdb;->z:I

    sub-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    iput p0, p5, Landroid/graphics/Rect;->bottom:I

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method
