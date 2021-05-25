.class Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$kth;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/cno;->sis()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneGameModePanel"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
