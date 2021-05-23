.class Lcom/oneplus/android/server/scene/OemSceneCallBlock$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneCallBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneCallBlock;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$ProcessObserver;->this$0:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;Lcom/oneplus/android/server/scene/OemSceneCallBlock$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock$ProcessObserver;-><init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onForegroundActivitiesChanged: packgeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$ProcessObserver;->this$0:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$200(Lcom/oneplus/android/server/scene/OemSceneCallBlock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", foregroundActivities: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OemSceneCallBlock"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneCallBlock$ProcessObserver;->this$0:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->updatePis()V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$100()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProcessDied: pid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneCallBlock"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
