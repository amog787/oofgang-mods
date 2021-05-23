.class Lcom/android/server/am/OnePlusBackgroundFrozen$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$you;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p1, "OPBF"

    if-nez p2, :cond_0

    const-string p0, "# pkgChangeReceiver # onReceive # intent is null, return"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.permission.cts"

    const-string v3, "com.android.tradefed.utils.wifi"

    const-string v4, "pkg:"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is installed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    const-string p1, "detect pre-condition pkg installed, \'Both\' close Appboot & Background-freeze features"

    invoke-static {v5, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$you;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P(Lcom/android/server/am/OnePlusBackgroundFrozen;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v6, v6}, Lcom/android/server/am/obl;->ywr(Landroid/content/Context;II)I

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is re-installed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const-string p2, "detect pre-condition pkg re-installed, \'Both\' close Appboot & Background-freeze features"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
