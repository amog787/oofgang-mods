.class Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;
.super Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongshotConnection"
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/longshot/ILongScreenshotListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/oneplus/longshot/ILongScreenshot;

.field final synthetic this$0:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;


# direct methods
.method private constructor <init>(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;-><init>(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    return-object p0
.end method


# virtual methods
.method public isTopActivityDisplayCompat(Ljava/lang/String;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyMove()V
    .locals 3

    const-string v0, "Longshot.ManagerService"

    const-string v1, "notifyMove"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/longshot/ILongScreenshotListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotListener;->onMove()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Longshot.ManagerService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Longshot.ManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    :try_start_0
    invoke-interface {p1, p0}, Lcom/oneplus/longshot/ILongScreenshot;->start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/IWindowManager;->onLongshotStart()V
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
    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Longshot.ManagerService"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->stop()V

    return-void
.end method

.method registerListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 2

    const-string v0, "Longshot.ManagerService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    invoke-static {v1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->access$200(Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/view/IWindowManager;->stopLongshotConnection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method unregisterListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
