.class public Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;
.super Lcom/oneplus/longshot/ILongScreenshotManager$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;
    }
.end annotation


# static fields
.field private static final COMPONENT_LONGSHOT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "Longshot.ManagerService"

.field private static sInstance:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.screenshot"

    const-string v2, "com.oneplus.screenshot.LongshotService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->sInstance:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;-><init>(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$zta;)V

    iput-object v1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    iput-object p1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "--- bind failed: service = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", conn = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Longshot.ManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private createLongshotIntent(ZZ)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "statusbar_visible"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "navigationbar_visible"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;
    .locals 1

    sget-object v0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->sInstance:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    invoke-direct {v0, p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->sInstance:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    :cond_0
    sget-object p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->sInstance:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    return-object p0
.end method


# virtual methods
.method public dumpViewInfo(Ljava/lang/String;Lcom/oneplus/longshot/IViewPropCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oneplus/longshot/ILongScreenshot;->dumpViewInfo(Ljava/lang/String;Lcom/oneplus/longshot/IViewPropCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getConfigValues()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/longshot/ILongScreenshot;->getConfigValues()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isLongshotHandleState()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/longshot/ILongScreenshot;->isHandleState()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Longshot.ManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLongshotMode()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLongshotMoveState()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/longshot/ILongScreenshot;->isMoveState()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Longshot.ManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyLongshotScroll(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/longshot/ILongScreenshot;->notifyScroll(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Longshot.ManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public notifyLongshotScrollChanged(IIII)V
    .locals 3

    const-string v0, "Longshot.ManagerService"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLongshotScrollChanged y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {v1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oneplus/longshot/ILongScreenshot;->notifyLongshotScrollChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyScrollViewSearchComplete(III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oneplus/longshot/ILongScreenshot;->notifyScrollViewSearchComplete(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Longshot.ManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyScrollViewTop(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/longshot/ILongScreenshot;->notifyScrollViewTop(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Longshot.ManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public notifyWindowLayerChange(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    const-string v0, "Longshot.ManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWindowLayerChange windowToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/longshot/ILongScreenshot;->notifyWindowLayerChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onUnscrollableView()V
    .locals 2

    const-string v0, "Longshot.ManagerService"

    :try_start_0
    const-string v1, "onUnscrollableView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/longshot/ILongScreenshot;->onUnscrollableView()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Longshot.ManagerService"

    const-string v1, "published"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_longshot_manager_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-virtual {p0, p1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->registerListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    return-void
.end method

.method public stopLongshot(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Longshot.ManagerService"

    const-string v1, "stopLongshot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-static {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/longshot/ILongScreenshot;->stopLongshot(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public takeLongshot(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->stopLongshot(I)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->createLongshotIntent(ZZ)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start : bindService="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Longshot.ManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->mLongshot:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;

    invoke-virtual {p0, p1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->unregisterListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    return-void
.end method
