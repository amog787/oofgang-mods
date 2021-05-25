.class Lcom/android/server/am/f$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/f;


# direct methods
.method public constructor <init>(Lcom/android/server/am/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/am/f;->rtg(Lcom/android/server/am/f;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_3

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {p1, v2}, Lcom/android/server/am/f;->bio(Lcom/android/server/am/f;Z)Z

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {p0, v2, v0}, Lcom/android/server/am/f;->wtn(Lcom/android/server/am/f;ZLjava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {v1}, Lcom/android/server/am/f;->kth(Lcom/android/server/am/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    iget-object p1, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {p1}, Lcom/android/server/am/f;->igw(Lcom/android/server/am/f;)Z

    move-result p1

    if-eq v2, p1, :cond_6

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {v0}, Lcom/android/server/am/f;->ssp(Lcom/android/server/am/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Slient5G"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/f;->zta(Lcom/android/server/am/f;Lorg/json/JSONArray;)V

    iget-object p0, p0, Lcom/android/server/am/f$sis;->zta:Lcom/android/server/am/f;

    invoke-static {p0}, Lcom/android/server/am/f;->cno(Lcom/android/server/am/f;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_6
    :goto_3
    return-void
.end method
