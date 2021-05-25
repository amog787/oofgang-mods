.class Lcom/oneplus/android/server/scene/OemSceneModeController$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneModeController;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/oneplus/android/server/scene/OemSceneModeController;

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneModeController;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->you:Lcom/oneplus/android/server/scene/OemSceneModeController;

    iput p2, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->zta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->zta:I

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->you:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->kth(Lcom/oneplus/android/server/scene/OemSceneModeController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->bio(Lcom/oneplus/android/server/scene/OemSceneModeController;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->you:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ugm(Lcom/oneplus/android/server/scene/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->you:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->kth(Lcom/oneplus/android/server/scene/OemSceneModeController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/oneplus/android/server/scene/OemSceneModeController;->bio(Lcom/oneplus/android/server/scene/OemSceneModeController;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->you:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->kth(Lcom/oneplus/android/server/scene/OemSceneModeController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->bio(Lcom/oneplus/android/server/scene/OemSceneModeController;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->you:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->kth(Lcom/oneplus/android/server/scene/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$you;->you:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ugm(Lcom/oneplus/android/server/scene/OemSceneModeController;)Z

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->bio(Lcom/oneplus/android/server/scene/OemSceneModeController;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method
