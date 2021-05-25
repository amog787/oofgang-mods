.class Lcom/android/server/am/OnePlusHighPowerDetector$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "type"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] Notification Type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is canceled by user"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OHPD"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    :goto_0
    return-void
.end method
