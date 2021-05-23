.class final Lcom/android/server/wm/OpScreenCompat$sis;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "sis"
.end annotation


# instance fields
.field private final sis:Landroid/net/Uri;

.field final synthetic tsu:Lcom/android/server/wm/OpScreenCompat;

.field private final you:Landroid/net/Uri;

.field private final zta:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpScreenCompat;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/OpScreenCompat$sis;->tsu:Lcom/android/server/wm/OpScreenCompat;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "op_camera_notch_ignore"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->zta:Landroid/net/Uri;

    const-string v0, "oneplus_carmode_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->you:Landroid/net/Uri;

    const-string v0, "oneplus_carmode_inside"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->sis:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenCompat;->access$000(Lcom/android/server/wm/OpScreenCompat;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompat;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->zta:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->you:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->sis:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpScreenCompat;->access$100()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/OpScreenCompat$sis;->zta:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/android/server/wm/OpScreenCompat;->access$202(Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraNotch: mIsIgnoreCameraNotch="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/OpScreenCompat;->access$200()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpScreenCompat"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/OpScreenCompat$sis;->tsu:Lcom/android/server/wm/OpScreenCompat;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenCompat;->access$300(Lcom/android/server/wm/OpScreenCompat;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->tsu:Lcom/android/server/wm/OpScreenCompat;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenCompat;->access$300(Lcom/android/server/wm/OpScreenCompat;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    invoke-static {}, Lcom/android/server/wm/OpScreenCompat;->access$100()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/OpScreenCompat$sis;->you:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/OpScreenCompat$sis;->tsu:Lcom/android/server/wm/OpScreenCompat;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenCompat;->access$000(Lcom/android/server/wm/OpScreenCompat;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_carmode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/wm/OpScreenCompat;->access$402(Lcom/android/server/wm/OpScreenCompat;I)I

    :cond_3
    invoke-static {}, Lcom/android/server/wm/OpScreenCompat;->access$100()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/OpScreenCompat$sis;->sis:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat$sis;->tsu:Lcom/android/server/wm/OpScreenCompat;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenCompat;->access$000(Lcom/android/server/wm/OpScreenCompat;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oneplus_carmode_inside"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenCompat;->access$502(Lcom/android/server/wm/OpScreenCompat;I)I

    :cond_4
    return-void
.end method
