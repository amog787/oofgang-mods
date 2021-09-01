.class Lcom/android/settings/network/NetworkDashboardFragment$2;
.super Ljava/lang/Object;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 296
    iput-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragment$2;->this$0:Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 299
    iget-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragment$2;->this$0:Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-static {p2}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/NetworkDashboardFragment;->access$102(Lcom/android/settings/network/NetworkDashboardFragment;Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;)Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    .line 300
    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment$2;->this$0:Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->access$200(Lcom/android/settings/network/NetworkDashboardFragment;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
