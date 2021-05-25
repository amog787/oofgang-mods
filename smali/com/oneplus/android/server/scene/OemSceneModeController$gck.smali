.class Lcom/oneplus/android/server/scene/OemSceneModeController$gck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "gck"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$gck;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$gck;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->cno(Lcom/oneplus/android/server/scene/OemSceneModeController;Lorg/json/JSONArray;)V

    return-void
.end method
