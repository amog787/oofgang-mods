.class Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneAdModeController;->setModeByDefault(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

.field final synthetic you:I

.field final synthetic zta:Z


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;->sis:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iput-boolean p2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;->zta:Z

    iput p3, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;->you:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;->sis:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;->zta:Z

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;->you:I

    invoke-static {v0, v1, p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$000(Lcom/oneplus/android/server/scene/OemSceneAdModeController;ZI)V

    return-void
.end method
