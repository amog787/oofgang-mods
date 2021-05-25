.class Lcom/oneplus/android/server/scene/OemSceneCallBlock$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneCallBlock;->popNotify(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

.field final synthetic you:Ljava/lang/String;

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$you;->sis:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iput p2, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$you;->zta:I

    iput-object p3, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$you;->you:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$100()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " view onFocusChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OemSceneCallBlock"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$you;->sis:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iget p2, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$you;->zta:I

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$you;->you:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$400(Lcom/oneplus/android/server/scene/OemSceneCallBlock;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
