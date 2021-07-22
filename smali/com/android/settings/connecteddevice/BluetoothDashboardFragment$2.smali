.class Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;
.super Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
.source "BluetoothDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-direct {p0}, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateView(Ljava/lang/String;I)V
    .locals 2

    .line 302
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$400(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 303
    new-instance v1, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;-><init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
