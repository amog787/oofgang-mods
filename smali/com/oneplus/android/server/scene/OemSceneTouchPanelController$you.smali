.class Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$you;->zta:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$you;-><init>(Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$you;->zta:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->access$000(Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;Lorg/json/JSONArray;)V

    return-void
.end method
