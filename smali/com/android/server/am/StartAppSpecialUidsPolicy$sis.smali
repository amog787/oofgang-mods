.class Lcom/android/server/am/StartAppSpecialUidsPolicy$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StartAppSpecialUidsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy$sis;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v0, :cond_2

    const v0, -0x56ac2893

    if-eq p2, v0, :cond_1

    const v0, 0x50fbe506

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy$sis;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-static {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy$sis;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-static {p0, v3}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->sis(Lcom/android/server/am/StartAppSpecialUidsPolicy;Z)Z

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy$sis;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-static {p0, v1}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->sis(Lcom/android/server/am/StartAppSpecialUidsPolicy;Z)Z

    :goto_2
    return-void
.end method
