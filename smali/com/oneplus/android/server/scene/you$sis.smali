.class Lcom/oneplus/android/server/scene/you$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/you;->ibl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/you;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/you$sis;->zta:Lcom/oneplus/android/server/scene/you;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/you$sis;->zta:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/you;->kth()V

    :cond_0
    return-void
.end method
