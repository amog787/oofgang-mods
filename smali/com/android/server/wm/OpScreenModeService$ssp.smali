.class final Lcom/android/server/wm/OpScreenModeService$ssp;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ssp"
.end annotation


# instance fields
.field private final sis:Landroid/net/Uri;

.field final synthetic tsu:Lcom/android/server/wm/OpScreenModeService;

.field private final you:Landroid/net/Uri;

.field private final zta:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->tsu:Lcom/android/server/wm/OpScreenModeService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "oneplus_screen_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->zta:Landroid/net/Uri;

    const-string v0, "oneplus_screen_resolution_adjust"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->you:Landroid/net/Uri;

    const-string v0, "tgpa_frame_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->sis:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->zta:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->you:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->sis:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->tsu:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oneplus_screen_refresh_rate"

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->tsu:Lcom/android/server/wm/OpScreenModeService;

    iget v1, p2, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    if-eq p1, v1, :cond_1

    invoke-static {p2}, Lcom/android/server/wm/OpScreenModeService;->access$000(Lcom/android/server/wm/OpScreenModeService;)Lcom/android/server/wm/OpScreenModeService$rtg;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->tsu:Lcom/android/server/wm/OpScreenModeService;

    iput p1, p2, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->tsu:Lcom/android/server/wm/OpScreenModeService;

    invoke-virtual {p1}, Lcom/android/server/wm/OpScreenModeService;->setResolution()V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$ssp;->tsu:Lcom/android/server/wm/OpScreenModeService;

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenModeService;->updateTgpaFrameRate()V

    return-void
.end method
