.class public Lcom/oneplus/android/server/scene/ESportMode$tsu;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/ESportMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/ESportMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/ESportMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode$tsu;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode$tsu;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/ESportMode;->access$400(Lcom/oneplus/android/server/scene/ESportMode;)Z

    move-result p1

    const-string p2, "ESportMode"

    if-eqz p1, :cond_0

    const-string p1, "Wifi connected, force to disable telephony esport mode"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ESportMode$tsu;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/ESportMode;->access$300(Lcom/oneplus/android/server/scene/ESportMode;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/scene/ESportMode;->access$500()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Wifi disconnected, need to re-enable telephony esport mode"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ESportMode$tsu;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/ESportMode;->access$300(Lcom/oneplus/android/server/scene/ESportMode;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode$tsu;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {p1, v0}, Lcom/oneplus/android/server/scene/ESportMode;->access$002(Lcom/oneplus/android/server/scene/ESportMode;Z)Z

    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/scene/ESportMode$tsu;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/ESportMode;->access$000(Lcom/oneplus/android/server/scene/ESportMode;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ywr$zta;->bud(Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ESportMode$tsu;->zta:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/ESportMode;->access$100(Lcom/oneplus/android/server/scene/ESportMode;Z)V

    :cond_2
    :goto_0
    return-void
.end method
