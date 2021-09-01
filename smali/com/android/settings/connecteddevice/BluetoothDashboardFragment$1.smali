.class Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;
.super Ljava/lang/Object;
.source "BluetoothDashboardFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 268
    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " iBinder = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDashboardFrag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {p2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$002(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    .line 273
    iget-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 274
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v3}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$200(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    .line 279
    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v2, v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$300(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected componentName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothDashboardFrag"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
