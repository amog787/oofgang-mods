.class Lcom/oneplus/android/server/iris/bio$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/iris/bio;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/iris/bio;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/bio$you;->zta:Lcom/oneplus/android/server/iris/bio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/iris/bio;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpIrisWhiteListManager"

    const-string v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/bio$you;->zta:Lcom/oneplus/android/server/iris/bio;

    invoke-static {v0}, Lcom/oneplus/android/server/iris/bio;->you(Lcom/oneplus/android/server/iris/bio;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio$you;->zta:Lcom/oneplus/android/server/iris/bio;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/bio;->you(Lcom/oneplus/android/server/iris/bio;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
