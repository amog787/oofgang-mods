.class Lcom/android/server/am/zgw$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/zgw;


# direct methods
.method constructor <init>(Lcom/android/server/am/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/zgw$zta;->zta:Lcom/android/server/am/zgw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/zgw;->zta()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oneplus.intent.action.MDM_VIP_BROADCAST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "OPBroadcastDataCollector"

    if-eqz p2, :cond_1

    const-string p1, "uploadMDM for ACTION_MDM_VIP_BROADCAST_DATE"

    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/zgw$zta;->zta:Lcom/android/server/am/zgw;

    invoke-virtual {p0}, Lcom/android/server/am/zgw;->ear()V

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "uploadMDM for ACTION_SHUTDOWN"

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
