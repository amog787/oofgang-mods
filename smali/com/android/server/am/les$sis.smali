.class Lcom/android/server/am/les$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/les;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# static fields
.field public static final sis:I = 0x1

.field public static final tsu:I = 0xea60

.field public static final you:I


# instance fields
.field final synthetic zta:Lcom/android/server/am/les;


# direct methods
.method constructor <init>(Lcom/android/server/am/les;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    invoke-static {p0, p1}, Lcom/android/server/am/les;->ssp(Lcom/android/server/am/les;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    new-instance v0, Lcom/android/server/am/les$you;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/les$you;-><init>(Lcom/android/server/am/les;Lcom/android/server/am/les$zta;)V

    invoke-static {p1, v0}, Lcom/android/server/am/les;->you(Lcom/android/server/am/les;Lcom/android/server/am/les$you;)Lcom/android/server/am/les$you;

    iget-object p1, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    invoke-static {v1}, Lcom/android/server/am/les;->rtg(Lcom/android/server/am/les;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    invoke-static {v2}, Lcom/android/server/am/les;->zta(Lcom/android/server/am/les;)Lcom/android/server/am/les$you;

    move-result-object v2

    const-string v3, "OpBatteryStatsService"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/server/am/les;->tsu(Lcom/android/server/am/les;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    invoke-static {p1}, Lcom/android/server/am/les;->sis(Lcom/android/server/am/les;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    invoke-static {v0}, Lcom/android/server/am/les;->rtg(Lcom/android/server/am/les;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/les$sis;->zta:Lcom/android/server/am/les;

    invoke-static {p0}, Lcom/android/server/am/les;->zta(Lcom/android/server/am/les;)Lcom/android/server/am/les$you;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/les$you;->zta(Lorg/json/JSONArray;)V

    :goto_0
    return-void
.end method
