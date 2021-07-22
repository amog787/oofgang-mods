.class Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;
.super Ljava/lang/Object;
.source "BluetoothDashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->updateView(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$content:I


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;Ljava/lang/String;I)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->this$1:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->val$address:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->val$content:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BluetoothDashboardFrag"

    .line 307
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->val$content:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->val$content:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->this$1:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;

    iget-object v1, v1, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;->this$0:Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2$1;->val$address:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->access$300(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
