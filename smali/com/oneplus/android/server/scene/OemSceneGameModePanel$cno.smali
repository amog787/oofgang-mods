.class Lcom/oneplus/android/server/scene/OemSceneGameModePanel$cno;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$cno;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new call status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OemSceneGameModePanel"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$cno;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->ssp(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Z)V

    :cond_1
    return-void
.end method
