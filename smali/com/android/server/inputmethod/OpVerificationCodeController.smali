.class public Lcom/android/server/inputmethod/OpVerificationCodeController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/vcaction/IOpVerificationCodeController;


# static fields
.field private static final BROADCAST_PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.MMSVerification"

.field private static final DEBUG:Z

.field private static final DEF_COMMIT_INTERVAL_MS:I = 0x64

.field private static final DEF_TIME_STAMP:J = -0x1L

.field private static final EXTRA_SUPPORT_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FUNC_DEBUG:Z

.field private static final OP_MMS_SEND_ACTION:Ljava/lang/String; = "oneplus.intent.action.MMSVerification"

.field private static final OP_VC_CONFIG_NAME:Ljava/lang/String; = "OnePlusVerificationCodeConfig"

.field private static final TAG:Ljava/lang/String; = "OpVerificationCodeController"


# instance fields
.field private mActionListener:Lcom/android/server/ear/zta$zta;

.field private final mActionProviderImpl:Lcom/android/server/ear/zta;

.field private mCommitTimeInterval:I

.field private mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private mInputTypeNum:Z

.field private mLatestCodeTimeStamp:J

.field private volatile mOpLatestImeBounds:Landroid/graphics/Rect;

.field private mOpVCAction:Lcom/android/server/ear/you;

.field private mPreImeVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/vcaction/OpVerificationCodeInjector;->FUNC_DEBUG:Z

    sput-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->FUNC_DEBUG:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->FUNC_DEBUG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    const-string v1, "com.taobao.taobao/com.ali.user.mobile.login.ui.UserLoginActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqlive/com.tencent.qqlive.ona.browser.H5Activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    const-string v1, "com.baidu.searchbox/com.baidu.sapi2.activity.LoginActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    const-string v1, "com.netease.newsreader.activity/com.netease.newsreader.common.account.fragment.login.TransparentLoginActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mInputTypeNum:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mLatestCodeTimeStamp:J

    new-instance v0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/OpVerificationCodeController$you;-><init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionProviderImpl:Lcom/android/server/ear/zta;

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVerificationCodeController"

    const-string v1, "OpVerificationCodeController construct"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mH:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/OpVerificationCodeController;)I
    .locals 0

    iget p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/inputmethod/OpVerificationCodeController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/inputmethod/OpVerificationCodeController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/inputmethod/OpVerificationCodeController;Lcom/android/server/ear/zta$zta;)Lcom/android/server/ear/zta$zta;
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionListener:Lcom/android/server/ear/zta$zta;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->commitCodeOneByOne(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->singleCommit(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/inputmethod/OpVerificationCodeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->handleParseNewConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/inputmethod/OpVerificationCodeController;JJ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/OpVerificationCodeController;->checkTimeStamp(JJ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/OpVerificationCodeController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mLatestCodeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/OpVerificationCodeController;->printSecureCodeDebug(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/ear/you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpVCAction:Lcom/android/server/ear/you;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method static synthetic access$700(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->verifyInputType(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/inputmethod/OpVerificationCodeController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->checkExtraSupportedTarget()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/inputmethod/OpVerificationCodeController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    return p0
.end method

.method private static appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    return-object p0
.end method

.method private checkExtraSupportedTarget()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v1, "OpVerificationCodeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LastImeTargetWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | CurFocus "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "OpVerificationCodeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_2

    const-string v3, "++"

    goto :goto_0

    :cond_2
    const-string v3, "--"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ImeTarget_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return v1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check Extra Supported Target Ex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpVerificationCodeController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private checkTimeStamp(JJ)Z
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    move-wide v2, p3

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_2
    iget-wide v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mLatestCodeTimeStamp:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iput-wide v2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mLatestCodeTimeStamp:J

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->debugVisibleTime(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p0, p3, p4}, Lcom/android/server/inputmethod/OpVerificationCodeController;->debugVisibleTime(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    iget-wide p2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mLatestCodeTimeStamp:J

    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/OpVerificationCodeController;->debugVisibleTime(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    const-string p0, "New Msg. SentT %s, ReceiveT %s >> %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpVerificationCodeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method private commitCodeOneByOne(Ljava/lang/CharSequence;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mH:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/inputmethod/OpVerificationCodeController$sis;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/inputmethod/OpVerificationCodeController$sis;-><init>(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;I)V

    iget v2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    mul-int/2addr v0, v2

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Commit VC Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpVerificationCodeController"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method private debugVisibleTime(J)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm:ss:SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleParseNewConfig()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/oneplus/config/ConfigGrabber;

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    const-string v3, "OnePlusVerificationCodeConfig"

    invoke-direct {v2, p0, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "extra_support_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "OpVerificationCodeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_2

    :cond_4
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "OpVerificationCodeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleParseNewConfig Ex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_5

    sget-object v2, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_5
    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "OpVerificationCodeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_3

    :cond_6
    monitor-exit p0

    :goto_4
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_5
    sget-object v2, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_7

    sget-object v3, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    sget-object v3, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_7
    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->EXTRA_SUPPORT_LIST:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "OpVerificationCodeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    goto :goto_6

    :cond_8
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method private initActionIfPossible()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpVCAction:Lcom/android/server/ear/you;

    const-string v1, "OpVerificationCodeController"

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpVCAction Instance Exist."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/server/ear/you;

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionProviderImpl:Lcom/android/server/ear/zta;

    invoke-direct {v0, v1, v2}, Lcom/android/server/ear/you;-><init>(Landroid/content/Context;Lcom/android/server/ear/zta;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpVCAction:Lcom/android/server/ear/you;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.MMSVerification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;-><init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V

    const/4 p0, 0x0

    const-string v3, "com.oplus.permission.safe.MMSVerification"

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Skip init VC Action."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private initOnlineConfig(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/OpVerificationCodeController$tsu;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/OpVerificationCodeController$tsu;-><init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V

    new-instance p0, Lcom/oneplus/config/ConfigObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v2, "OnePlusVerificationCodeConfig"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private static inputTypeToString(I)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, "TYPE_NULL"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0xf

    and-int/lit16 v1, p0, 0xff0

    const v2, 0xfff000

    and-int/2addr p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown(class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " variation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flag=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    const/4 v5, 0x2

    const/16 v6, 0x10

    if-eq v0, v5, :cond_6

    const/4 p0, 0x3

    if-eq v0, p0, :cond_5

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    goto/16 :goto_b

    :cond_1
    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    const/16 p0, 0x20

    if-eq v1, p0, :cond_2

    goto/16 :goto_b

    :cond_2
    const-string v2, "time"

    goto/16 :goto_b

    :cond_3
    const-string v2, "date"

    goto/16 :goto_b

    :cond_4
    const-string v2, "datetime"

    goto/16 :goto_b

    :cond_5
    const-string v2, "phone"

    goto/16 :goto_b

    :cond_6
    if-nez v1, :cond_7

    const-string v2, "number"

    goto :goto_0

    :cond_7
    if-ne v1, v6, :cond_8

    const-string v2, "numberPassword"

    :cond_8
    :goto_0
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_1

    :cond_9
    move v0, v3

    :goto_1
    const-string v1, "numberSigned"

    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_a

    move v3, v4

    :cond_a
    const-string p0, "numberDecimal"

    :goto_2
    invoke-static {v0, v3, p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    :cond_b
    sparse-switch v1, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "textWebPassword"

    goto :goto_3

    :sswitch_1
    const-string v2, "textWebEmailAddress"

    goto :goto_3

    :sswitch_2
    const-string v2, "textPhonetic"

    goto :goto_3

    :sswitch_3
    const-string v2, "textFilter"

    goto :goto_3

    :sswitch_4
    const-string v2, "textWebEditText"

    goto :goto_3

    :sswitch_5
    const-string v2, "textVisiblePassword"

    goto :goto_3

    :sswitch_6
    const-string v2, "textPassword"

    goto :goto_3

    :sswitch_7
    const-string v2, "textPostalAddress"

    goto :goto_3

    :sswitch_8
    const-string v2, "textPersonName"

    goto :goto_3

    :sswitch_9
    const-string v2, "textLongMessage"

    goto :goto_3

    :sswitch_a
    const-string v2, "textShortMessage"

    goto :goto_3

    :sswitch_b
    const-string v2, "textEmailSubject"

    goto :goto_3

    :sswitch_c
    const-string v2, "textEmailAddress"

    goto :goto_3

    :sswitch_d
    const-string v2, "textUri"

    goto :goto_3

    :sswitch_e
    const-string v2, "text"

    :goto_3
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_4

    :cond_c
    move v0, v3

    :goto_4
    const-string v1, "textCapCharacters"

    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_5

    :cond_d
    move v1, v3

    :goto_5
    const-string v2, "textCapWords"

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_e

    move v1, v4

    goto :goto_6

    :cond_e
    move v1, v3

    :goto_6
    const-string v2, "textCapSentences"

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_7

    :cond_f
    move v1, v3

    :goto_7
    const-string v2, "textAutoCorrect"

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_8

    :cond_10
    move v1, v3

    :goto_8
    const-string v2, "textAutoComplete"

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    move v1, v4

    goto :goto_9

    :cond_11
    move v1, v3

    :goto_9
    const-string v2, "textMultiLine"

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    move v1, v4

    goto :goto_a

    :cond_12
    move v1, v3

    :goto_a
    const-string v2, "textImeMultiLine"

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->appendFlagText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x80000

    and-int/2addr p0, v1

    if-eqz p0, :cond_13

    move v3, v4

    :cond_13
    const-string p0, "textNoSuggestions"

    goto/16 :goto_2

    :goto_b
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x10 -> :sswitch_d
        0x20 -> :sswitch_c
        0x30 -> :sswitch_b
        0x40 -> :sswitch_a
        0x50 -> :sswitch_9
        0x60 -> :sswitch_8
        0x70 -> :sswitch_7
        0x80 -> :sswitch_6
        0x90 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xb0 -> :sswitch_3
        0xc0 -> :sswitch_2
        0xd0 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isSensitiveAttrChanged(IZ)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mInputTypeNum:Z

    if-eq p1, p2, :cond_2

    iput-boolean p2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mInputTypeNum:Z

    sget-boolean p1, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Input Type Num Changed to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpVerificationCodeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method private printSecureCodeDebug(Ljava/lang/String;J)V
    .locals 5

    const-string v0, "OpVerificationCodeController"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string v1, "@+!4#$%~"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VC Content "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VC Content Null/TooShort, @ "

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/OpVerificationCodeController;->debugVisibleTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private singleCommit(Ljava/lang/CharSequence;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "single Commit VC Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpVerificationCodeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static verifyInputType(I)Z
    .locals 11

    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    and-int/lit16 v0, p0, 0xff0

    const/16 v4, 0x80

    if-ne v0, v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/16 v5, 0xe0

    if-ne v0, v5, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move v6, v3

    move v5, v4

    move v4, v6

    goto :goto_3

    :cond_2
    if-ne v0, v1, :cond_4

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    move v4, v0

    move v6, v2

    move v0, v3

    move v5, v0

    goto :goto_3

    :cond_4
    move v0, v3

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_3
    or-int v7, v5, v0

    or-int/2addr v7, v6

    or-int/2addr v7, v4

    sget-boolean v8, Lcom/android/server/inputmethod/OpVerificationCodeController;->FUNC_DEBUG:Z

    if-eqz v8, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    if-eqz v7, :cond_5

    const-string v10, "+++"

    goto :goto_4

    :cond_5
    const-string v10, "---"

    :goto_4
    aput-object v10, v9, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v1

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v9, v0

    const-string v0, "%s Verify InputType Text-P-Type %b | Text-Web-P-Type %b | Num-Type %b | Num-P-Type %b"

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpVerificationCodeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputType Detail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->inputTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v7
.end method


# virtual methods
.method public initController(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVerificationCodeController"

    const-string v1, "initController with imms"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->initActionIfPossible()V

    iget-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->initOnlineConfig(Landroid/content/Context;)V

    return-void
.end method

.method public notifyIMELayoutChanged(ZLcom/android/server/wm/DisplayFrames;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    or-int/lit8 p1, p1, 0x2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionListener:Lcom/android/server/ear/zta$zta;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/android/server/ear/zta$zta;->zta(I)V

    :cond_3
    return-void
.end method

.method public notifyImeAttributeChanged(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->isSensitiveAttrChanged(IZ)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionListener:Lcom/android/server/ear/zta$zta;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/server/ear/zta$zta;->zta(I)V

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "OpVerificationCodeController"

    const-string p1, "Null ActionListener, Fail to notify"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
