.class Lcom/android/settings/network/NetworkDashboardFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/NetworkDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/network/NetworkDashboardFragment;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragment$3;->this$0:Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oneplus.sprint.callingplus.ui_refresh"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment$3;->this$0:Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->access$200(Lcom/android/settings/network/NetworkDashboardFragment;)V

    :cond_0
    return-void
.end method
