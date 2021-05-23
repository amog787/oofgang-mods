.class Lcom/android/server/policy/OpPhoneWindowManager$kth;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$kth;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$kth;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$200(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$ywr;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->onChange(Z)V

    :cond_0
    return-void
.end method
