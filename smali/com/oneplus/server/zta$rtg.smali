.class final Lcom/oneplus/server/zta$rtg;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "rtg"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/zta;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    iget-object p1, p1, Lcom/oneplus/server/zta;->ivd:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Lcom/oneplus/server/zta;->bud(Lcom/oneplus/server/zta;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oneplus_screen_refresh_rate"

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p2}, Lcom/oneplus/server/zta;->irq(Lcom/oneplus/server/zta;)I

    move-result p2

    if-eq p1, p2, :cond_4

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/oneplus/server/zta;->p()Lcom/oneplus/server/zta;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/server/zta;->p()Lcom/oneplus/server/zta;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/OnePlusUtil$zta;->dma(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_0
    iget-object p2, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p2}, Lcom/oneplus/server/zta;->zta(Lcom/oneplus/server/zta;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {v0, p1}, Lcom/oneplus/server/zta;->vdw(Lcom/oneplus/server/zta;I)I

    iget-object p0, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0}, Lcom/oneplus/server/zta;->qbh(Lcom/oneplus/server/zta;)V

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    iget-object p1, p1, Lcom/oneplus/server/zta;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Lcom/oneplus/server/zta;->qeg(Lcom/oneplus/server/zta;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Lcom/oneplus/server/zta;->bud(Lcom/oneplus/server/zta;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_screen_highvsync_auto_refresh_rate"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {v0}, Lcom/oneplus/server/zta;->zta(Lcom/oneplus/server/zta;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    if-nez p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-static {v1, p2}, Lcom/oneplus/server/zta;->a(Lcom/oneplus/server/zta;I)I

    const-string p1, "persist.sys.dps.support"

    iget-object p2, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p2}, Lcom/oneplus/server/zta;->ivd(Lcom/oneplus/server/zta;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/oneplus/server/zta$rtg;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0}, Lcom/oneplus/server/zta;->sis(Lcom/oneplus/server/zta;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    :goto_1
    return-void
.end method
