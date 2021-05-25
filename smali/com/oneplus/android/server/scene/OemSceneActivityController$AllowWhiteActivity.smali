.class public Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllowWhiteActivity"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneActivityController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;->this$0:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 2

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->cno:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] AllowWhiteActivity: config "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneActivityController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    aget-object p1, p0, v1

    const-string v0, "add_pkg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    aget-object p1, p0, p1

    const-string v0, "zen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v1
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->cno:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneActivityController"

    const-string v0, "[scene] AllowWhiteActivity: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;->this$0:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->you:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->zta(Lcom/oneplus/android/server/scene/OemSceneActivityController;IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->cno:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneActivityController"

    const-string v0, "[scene] AllowWhiteActivity: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;->this$0:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->you:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->zta(Lcom/oneplus/android/server/scene/OemSceneActivityController;IZ)V

    return v0
.end method
