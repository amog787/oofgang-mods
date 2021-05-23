.class final Lcom/oneplus/android/server/alertslider/you$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/alertslider/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zta"
.end annotation


# instance fields
.field final synthetic you:Lcom/oneplus/android/server/alertslider/you;

.field private final zta:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/alertslider/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you$zta;->you:Lcom/oneplus/android/server/alertslider/you;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "oem_zen_media_switch"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you$zta;->zta:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/alertslider/you;->ssp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings change selfChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlertSliderAudioPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/you$zta;->zta:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/you$zta;->you:Lcom/oneplus/android/server/alertslider/you;

    invoke-static {p1}, Lcom/oneplus/android/server/alertslider/you;->rtg(Lcom/oneplus/android/server/alertslider/you;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "oem_zen_media_switch"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v1, v0

    :cond_1
    invoke-static {p1, v1}, Lcom/oneplus/android/server/alertslider/you;->kth(Lcom/oneplus/android/server/alertslider/you;Z)Z

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/you$zta;->you:Lcom/oneplus/android/server/alertslider/you;

    invoke-static {p1}, Lcom/oneplus/android/server/alertslider/you;->bio(Lcom/oneplus/android/server/alertslider/you;)Lcom/android/server/audio/AudioService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/you$zta;->you:Lcom/oneplus/android/server/alertslider/you;

    invoke-static {p1}, Lcom/oneplus/android/server/alertslider/you;->cno(Lcom/oneplus/android/server/alertslider/you;)Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you$zta;->you:Lcom/oneplus/android/server/alertslider/you;

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/oneplus/android/server/alertslider/you;->igw(Lcom/oneplus/android/server/alertslider/you;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/oneplus/android/server/alertslider/you;->wtn(Lcom/oneplus/android/server/alertslider/you;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public zta()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you$zta;->you:Lcom/oneplus/android/server/alertslider/you;

    invoke-static {v0}, Lcom/oneplus/android/server/alertslider/you;->rtg(Lcom/oneplus/android/server/alertslider/you;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/you$zta;->zta:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
