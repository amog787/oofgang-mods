.class Lcom/oneplus/android/server/scene/OemSceneModeController$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "hashmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->rtg(Lcom/oneplus/android/server/scene/OemSceneModeController;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->tsu(Lcom/oneplus/android/server/scene/OemSceneModeController;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->j()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->g()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->i()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->h()V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->f()V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->sis(Lcom/oneplus/android/server/scene/OemSceneModeController;)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->obl(Lcom/oneplus/android/server/scene/OemSceneModeController;)V

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->zgw(Lcom/oneplus/android/server/scene/OemSceneModeController;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ssp(Lcom/oneplus/android/server/scene/OemSceneModeController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
