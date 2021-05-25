.class Lcom/oneplus/android/server/iris/bio$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/iris/bio;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/iris/bio;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/bio$zta;->zta:Lcom/oneplus/android/server/iris/bio;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio$zta;->zta:Lcom/oneplus/android/server/iris/bio;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/iris/bio;->tsu(Lcom/oneplus/android/server/iris/bio;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "OpIrisWhiteListManager"

    const-string p1, "[scene] arguments is null while handling MSG_UPDATE_WHITELIST"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio$zta;->zta:Lcom/oneplus/android/server/iris/bio;

    const-string p1, "config_name"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/iris/bio;->sis(Lcom/oneplus/android/server/iris/bio;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
