.class public Lcom/android/server/wm/OpScreenModeService$rtg;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "rtg"
.end annotation


# static fields
.field private static final bio:I = 0x12

.field private static final cno:I = 0x6

.field private static final dma:I = 0x16

.field private static final gck:I = 0x15

.field private static final igw:I = 0x13

.field private static final kth:I = 0x7

.field private static final rtg:I = 0x4

.field private static final sis:I = 0x2

.field private static final ssp:I = 0x5

.field private static final tsu:I = 0x3

.field private static final wtn:I = 0x14

.field private static final you:I = 0x1


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p1, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$1100(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string v0, "ScreenModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KeepHighVsync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeService;->access$1200(Lcom/android/server/wm/OpScreenModeService;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$900(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1, v1}, Lcom/android/server/wm/OpScreenModeService;->access$1002(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ScreenModeService"

    const-string p1, " mAudioRecordStatus = false"

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$900(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v1, p1}, Lcom/android/server/wm/OpScreenModeService;->access$1002(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ScreenModeService"

    const-string p1, " mAudioRecordStatus = true"

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$700(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1, v1}, Lcom/android/server/wm/OpScreenModeService;->access$802(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ScreenModeService"

    const-string p1, " mInputMethodMode = false"

    goto :goto_0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :pswitch_4
    invoke-static {}, Lcom/oneplus/server/zta;->p()Lcom/oneplus/server/zta;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/oneplus/server/zta;->v(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$700(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v1, p1}, Lcom/android/server/wm/OpScreenModeService;->access$802(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ScreenModeService"

    const-string p1, " mInputMethodMode = true"

    goto :goto_0

    :catchall_4
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    :cond_0
    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ScreenModeService"

    const-string p1, " mInputMethodMode skip true by grayscale"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object v1, v1, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object v3, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object v4, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget v4, v4, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/OpScreenModeService;->getModeRecordIgnoreSetting(II)Lcom/android/server/wm/OpScreenModeService$sis;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/OpScreenModeService$sis;->zta:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    sget-boolean v1, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ScreenModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRateDirectly begin. rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDirectMode "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget v0, v0, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCurrentMode "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget v0, v0, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$rtg;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$rtg;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeService;->access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$rtg;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :catchall_5
    move-exception p0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iput v1, p1, Lcom/android/server/wm/OpScreenModeService;->mDirectMode:I

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ScreenModeService"

    const-string p1, "setRateDirectly end timeout"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_6
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw p0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "oneplus_screen_resolution_backup"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$600(Lcom/android/server/wm/OpScreenModeService;I)V

    goto :goto_1

    :pswitch_9
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget v0, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$sis;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService$sis;->zta:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateResolution to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$500(Lcom/android/server/wm/OpScreenModeService;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$rtg;->zta:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeService;->access$400(Lcom/android/server/wm/OpScreenModeService;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
