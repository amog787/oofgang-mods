.class Lcom/oneplus/android/server/scene/OemSceneCallBlock$rtg;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneCallBlock;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneCallBlock;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "PKG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONTEXT_PKG"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 p1, 0x3

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    const-string p1, "GameModeImComponents"

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$800(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v2}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$400(Lcom/oneplus/android/server/scene/OemSceneCallBlock;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {v3, v1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$602(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, v2, p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$700(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
