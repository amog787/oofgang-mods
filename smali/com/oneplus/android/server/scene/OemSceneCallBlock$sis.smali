.class Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneCallBlock;->setOnClickListenerView(Landroid/view/View;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:I

.field final synthetic sis:Ljava/lang/String;

.field final synthetic ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

.field final synthetic tsu:Ljava/lang/String;

.field final synthetic you:I

.field final synthetic zta:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->zta:Landroid/content/Intent;

    iput p3, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->you:I

    iput-object p4, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->sis:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->tsu:Ljava/lang/String;

    iput p6, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->rtg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$100()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OemSceneCallBlock"

    const-string v0, " view clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->zta:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$200(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->zta:Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->you:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$500(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->sis:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$602(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$500(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$500(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->you:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->tsu:Ljava/lang/String;

    const-string v2, "CONTEXT_PKG"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->sis:Ljava/lang/String;

    const-string v2, "PKG"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$500(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->ssp:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iget v0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->rtg:I

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$sis;->sis:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$400(Lcom/oneplus/android/server/scene/OemSceneCallBlock;ILjava/lang/String;)V

    return-void
.end method
