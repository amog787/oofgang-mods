.class Lcom/android/server/ibl$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/ibl;


# direct methods
.method constructor <init>(Lcom/android/server/ibl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/ibl;->igw(Lcom/android/server/ibl;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1}, Lcom/android/server/ibl;->wtn(Lcom/android/server/ibl;I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {p0, v0}, Lcom/android/server/ibl;->you(Lcom/android/server/ibl;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {p1, v0}, Lcom/android/server/ibl;->ywr(Lcom/android/server/ibl;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {p0, v0}, Lcom/android/server/ibl;->qbh(Lcom/android/server/ibl;I)V

    goto :goto_0

    :cond_2
    const-string p1, "OPGPS"

    const-string v0, "MSG_GT_ONLINECONFIG"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {v0}, Lcom/android/server/ibl;->gck(Lcom/android/server/ibl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "GpsController"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/ibl;->bio(Lcom/android/server/ibl;Lorg/json/JSONArray;)V

    iget-object p0, p0, Lcom/android/server/ibl$sis;->zta:Lcom/android/server/ibl;

    invoke-static {p0}, Lcom/android/server/ibl;->dma(Lcom/android/server/ibl;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_3
    :goto_0
    return-void
.end method
