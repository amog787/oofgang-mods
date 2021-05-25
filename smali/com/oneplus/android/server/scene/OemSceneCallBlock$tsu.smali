.class Lcom/oneplus/android/server/scene/OemSceneCallBlock$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneCallBlock;->resolveAdditionalConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

.field final synthetic zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$tsu;->you:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iput-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$tsu;->zta:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$tsu;->you:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$200(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$tsu;->zta:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$tsu;->you:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$000(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method
