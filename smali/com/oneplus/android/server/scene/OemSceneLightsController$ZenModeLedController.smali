.class public Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneLightsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZenModeLedController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneLightsController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneLightsController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;->this$0:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 1

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->igw:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] ZenModeLedController: config => "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneLightsController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneLightsController;->igw:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneLightsController"

    const-string v0, "[scene] ZenModeLedController: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;->this$0:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->zta(Lcom/oneplus/android/server/scene/OemSceneLightsController;)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;->this$0:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->you:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->you(Lcom/oneplus/android/server/scene/OemSceneLightsController;IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneLightsController;->igw:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneLightsController"

    const-string v0, "[scene] ZenModeLedController: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;->this$0:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->you:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->you(Lcom/oneplus/android/server/scene/OemSceneLightsController;IZ)V

    return v0
.end method
