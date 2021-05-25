.class Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneAdModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iget-boolean p1, p1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    const-string v0, "OemSceneAdModeController"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAppReceiver recevie: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.admode.action.test"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mEnable:Z

    goto/16 :goto_0

    :cond_1
    const-string p2, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iput-boolean v2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mEnable:Z

    goto/16 :goto_0

    :cond_2
    const-string p2, "debug_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    goto/16 :goto_0

    :cond_3
    const-string p2, "debug_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iput-boolean v2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    goto/16 :goto_0

    :cond_4
    const-string p2, "@ad4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "@ad4@manual@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0xd

    if-eqz p2, :cond_5

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$400(Lcom/oneplus/android/server/scene/OemSceneAdModeController;II)V

    goto/16 :goto_0

    :cond_5
    const-string p2, "@ad4@strength@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$400(Lcom/oneplus/android/server/scene/OemSceneAdModeController;II)V

    goto/16 :goto_0

    :cond_6
    const-string p2, "@ad4@default@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOpAdStrengthDefault:I

    goto :goto_0

    :cond_7
    const-string p2, "@interval"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$502(Lcom/oneplus/android/server/scene/OemSceneAdModeController;I)I

    goto :goto_0

    :cond_8
    const-string p2, "@times"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$102(Lcom/oneplus/android/server/scene/OemSceneAdModeController;I)I

    goto :goto_0

    :cond_9
    const-string p2, "dump"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " mInterval = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$500(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms, mTimes = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$100(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-void
.end method
