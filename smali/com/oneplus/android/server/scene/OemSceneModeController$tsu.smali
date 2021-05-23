.class Lcom/oneplus/android/server/scene/OemSceneModeController$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->igw(Lcom/oneplus/android/server/scene/OemSceneModeController;)Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ire()V

    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ywr$zta;->ibl()V

    return-void
.end method
