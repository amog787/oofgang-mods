.class public Lcom/oneplus/server/theme/OnePlusFontController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpFontController;


# static fields
.field private static final DEBUG:Z

.field private static final MSG_DUMP:I = 0x932ed

.field private static final MSG_NOTIFY_ZYGOTE:I = 0x932ee

.field private static final MSG_NULL:I = 0x932ec

.field private static final MSG_RESTORE_AFTER_BOOT:I = 0x932ef

.field private static final TAG:Ljava/lang/String; = "OPDFontCtrl"

.field private static volatile sInstance:Lcom/oneplus/server/theme/OnePlusFontController;


# instance fields
.field private init:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/theme/OnePlusFontController;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/server/theme/OnePlusFontController;->sInstance:Lcom/oneplus/server/theme/OnePlusFontController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->init:Z

    sget-boolean p0, Lcom/oneplus/server/theme/OnePlusFontController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OPDFontCtrl"

    const-string v0, "OnePlusFontController Construct."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/theme/OnePlusFontController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->handleDump()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/server/theme/OnePlusFontController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->handleNotifyZygote()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/server/theme/OnePlusFontController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->restoreUserFontAfterReboot()V

    return-void
.end method

.method private checkEnvAndPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->init:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->checkPermission()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkPermission()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private dispatchNewConfigs(Landroid/content/res/Configuration;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->getAm()Landroid/app/IActivityManager;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/oneplus/server/theme/OnePlusFontController;->updateConfigurationReflect(Landroid/app/IActivityManager;Landroid/content/res/Configuration;)V

    :goto_0
    const-string p0, "dispatchNewConfigs completed"

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "dispatchNewConfigs "

    invoke-static {p1, p0}, Lcom/oneplus/server/theme/OnePlusFontController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private getAm()Landroid/app/IActivityManager;
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-le p0, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private handleDump()V
    .locals 0

    const-string p0, "handleDump"

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private handleFactoryReset()V
    .locals 0

    const-string p0, "handleFactoryReset"

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/theme/OpFontHelperInjector;->handleFactoryReset()V

    return-void
.end method

.method private handleNotifyZygote()V
    .locals 0

    const-string p0, "handleNotifyZygote"

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OPDFontCtrl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/server/theme/OnePlusFontController$zta;

    iget-object v1, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/server/theme/OnePlusFontController$zta;-><init>(Lcom/oneplus/server/theme/OnePlusFontController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/server/theme/OnePlusFontController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPDFontCtrl"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPDFontCtrl"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static modifyOpFontConfig(Landroid/content/res/OnePlusExtraConfiguration;II)V
    .locals 0

    iput p1, p0, Landroid/content/res/OnePlusExtraConfiguration;->mFontUserId:I

    iget p1, p0, Landroid/content/res/OnePlusExtraConfiguration;->mFontSeq:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/content/res/OnePlusExtraConfiguration;->mFontSeq:I

    iput p2, p0, Landroid/content/res/OnePlusExtraConfiguration;->mFontID:I

    return-void
.end method

.method private prepareDebugEnv(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/oneplus/server/theme/OnePlusFontController$you;

    invoke-direct {v0, p0}, Lcom/oneplus/server/theme/OnePlusFontController$you;-><init>(Lcom/oneplus/server/theme/OnePlusFontController;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.opfont"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreUserFontAfterReboot()V
    .locals 3

    :try_start_0
    const-string v0, "persist.sys.font"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "Restore User Font After Reboot"

    invoke-static {v2}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/server/theme/OnePlusFontController;->changeFontForUser(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private scheduleRestoreFontWhenBootComplete(Landroid/content/Context;)V
    .locals 1

    const-string p1, "OPDFontCtrl"

    const-string v0, "Restore Font"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandler:Landroid/os/Handler;

    const v0, 0x932ef

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private static updateConfigurationReflect(Landroid/app/IActivityManager;Landroid/content/res/Configuration;)V
    .locals 6

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "updateConfiguration"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Configuration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update Cfg Reflect "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "Null ActivityManager/Configuration."

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeFontForUser(II)V
    .locals 6

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->checkEnvAndPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "checkEnvAndPermission false"

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "OPDFontCtrl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Change Font U %d , F %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->getAm()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v0, v1, Landroid/content/res/Configuration;->mOpExtraConfiguration:Landroid/content/res/OnePlusExtraConfiguration;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/theme/OnePlusFontController;->modifyOpFontConfig(Landroid/content/res/OnePlusExtraConfiguration;II)V

    const/high16 p1, 0x2000000

    invoke-static {v1, p1}, Lcom/oneplus/theme/OpFontHelperInjector;->changeFont(Landroid/content/res/Configuration;I)V

    invoke-direct {p0, v1}, Lcom/oneplus/server/theme/OnePlusFontController;->dispatchNewConfigs(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "changeFontForUser Exception"

    invoke-static {p1, p0}, Lcom/oneplus/server/theme/OnePlusFontController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dumpInfos()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/server/theme/OnePlusFontController;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandler:Landroid/os/Handler;

    const v1, 0x932ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public getFontIDsForUser(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFontIDsForUser "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oneplus/theme/OpFontHelperInjector;->getFontIDsForUser(I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public handleUserChange()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->checkEnvAndPermission()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "handleUserChange."

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public initForFontCtrl(Landroid/content/Context;)V
    .locals 1

    const-string v0, "OnePlusFontController initForFontCtrl Called."

    invoke-static {v0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    :try_start_0
    iput-object p1, p0, Lcom/oneplus/server/theme/OnePlusFontController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->initHandler()V

    invoke-direct {p0, p1}, Lcom/oneplus/server/theme/OnePlusFontController;->scheduleRestoreFontWhenBootComplete(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/theme/OnePlusFontController;->init:Z

    sget-boolean v0, Lcom/oneplus/server/theme/OnePlusFontController;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/server/theme/OnePlusFontController;->prepareDebugEnv(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "initForFontCtrl"

    invoke-static {p1, p0}, Lcom/oneplus/server/theme/OnePlusFontController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onFactoryReset()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->checkEnvAndPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "handleFactoryReset."

    invoke-static {v0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->handleFactoryReset()V

    return-void
.end method

.method public onOTACompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->checkEnvAndPermission()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "onOTACompleted."

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onPreparingForOTA()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->checkEnvAndPermission()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "onPreparingForOTA."

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    return-void
.end method
