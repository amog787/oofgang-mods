.class Lcom/android/server/OnePlusNfcService$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OnePlusNfcService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusNfcService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusNfcService$sis;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[NfcBroadcast] state change state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OnePlusNfcService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/OnePlusNfcService$sis;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {p1}, Lcom/android/server/OnePlusNfcService;->access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object p1, p0, Lcom/android/server/OnePlusNfcService$sis;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {p1}, Lcom/android/server/OnePlusNfcService;->access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/OnePlusNfcService$sis;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {p0}, Lcom/android/server/OnePlusNfcService;->access$300(Lcom/android/server/OnePlusNfcService;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
