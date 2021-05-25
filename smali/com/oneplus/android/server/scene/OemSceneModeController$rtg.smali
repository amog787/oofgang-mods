.class Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;
.super Landroid/content/BroadcastReceiver;
.source ""


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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ibl()Z

    move-result v0

    const-string v1, "OemSceneModeController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] onReceive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->you(Lcom/oneplus/android/server/scene/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "game_mode_status"

    const-string p2, "0"

    invoke-static {p0, p1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ywr$zta;->ywr()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/scene/OemSceneModeController;->gck(Lcom/oneplus/android/server/scene/OemSceneModeController;Z)Z

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->rtg(Lcom/oneplus/android/server/scene/OemSceneModeController;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ugm(Lcom/oneplus/android/server/scene/OemSceneModeController;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->wtn(Lcom/oneplus/android/server/scene/OemSceneModeController;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    const/4 p2, 0x0

    invoke-static {p1, v3, p2}, Lcom/oneplus/android/server/scene/OemSceneModeController;->dma(Lcom/oneplus/android/server/scene/OemSceneModeController;ZZ)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0, p2}, Lcom/oneplus/android/server/scene/OemSceneModeController;->gck(Lcom/oneplus/android/server/scene/OemSceneModeController;Z)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.oem.intent.action.SWITCH_TO_ESPORT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "esport_mode_enabled"

    const-string v5, "1"

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneModeController;->qbh(Lcom/oneplus/android/server/scene/OemSceneModeController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1}, Lcom/oneplus/android/server/scene/ESportMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/ESportMode;

    move-result-object p1

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/oneplus/android/server/scene/ESportMode;->setEnable(ZZ)V

    if-nez p2, :cond_5

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ibl()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "add notification enable esport"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "type"

    const-string v0, "2"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    const-string v0, "esports_start"

    invoke-static {p2, v0, p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->oif(Lcom/oneplus/android/server/scene/OemSceneModeController;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_5
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->you(Lcom/oneplus/android/server/scene/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "esport_mode_enable_trigger"

    invoke-static {p0, p1, v5, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.oem.intent.action.SHOW_DIALOG"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.GAME_SPACE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$rtg;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->qbh(Lcom/oneplus/android/server/scene/OemSceneModeController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.category.DEFAULT"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_7
    :goto_0
    return-void
.end method
