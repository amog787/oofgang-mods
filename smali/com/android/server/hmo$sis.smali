.class Lcom/android/server/hmo$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/hmo;


# direct methods
.method private constructor <init>(Lcom/android/server/hmo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hmo;Lcom/android/server/hmo$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hmo$sis;-><init>(Lcom/android/server/hmo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverHeatingDiagnosis"

    invoke-static {v1, v0}, Lcom/android/server/qbh$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {v0}, Lcom/android/server/hmo;->wtn(Lcom/android/server/hmo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const-string p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0x64

    mul-int/2addr p1, v3

    const-string v4, "scale"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    div-int/2addr p1, v3

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "fastcharge_status"

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v0

    :goto_0
    if-eqz v5, :cond_3

    const/16 v4, 0x8

    goto :goto_1

    :cond_3
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :goto_1
    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    iget-object v3, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->tsu(Lcom/android/server/hmo;)I

    move-result v3

    if-ne v3, v2, :cond_7

    iget-object v3, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->zta(Lcom/android/server/hmo;)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->dma(Lcom/android/server/hmo;)Lcom/android/server/hmo$rtg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hmo$rtg;->sis()V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->dma(Lcom/android/server/hmo;)Lcom/android/server/hmo$rtg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hmo$rtg;->tsu()V

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->ywr(Lcom/android/server/hmo;)I

    move-result v3

    if-eq p1, v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " level="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/qbh$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {p2, p1}, Lcom/android/server/hmo;->qbh(Lcom/android/server/hmo;I)I

    iget-object p0, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {p0}, Lcom/android/server/hmo;->cno(Lcom/android/server/hmo;)Lcom/android/server/hmo$cno;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v2, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_8
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {p2}, Lcom/android/server/hmo;->tsu(Lcom/android/server/hmo;)I

    move-result p2

    if-ne p2, v2, :cond_9

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {p2}, Lcom/android/server/hmo;->oif(Lcom/android/server/hmo;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p0, p0, Lcom/android/server/hmo$sis;->zta:Lcom/android/server/hmo;

    invoke-static {p0}, Lcom/android/server/hmo;->oif(Lcom/android/server/hmo;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    return-void
.end method
