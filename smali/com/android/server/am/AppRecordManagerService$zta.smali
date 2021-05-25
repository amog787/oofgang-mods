.class Lcom/android/server/am/AppRecordManagerService$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$zta;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$zta;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$000(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$zta;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$100(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$zta;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$200(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
