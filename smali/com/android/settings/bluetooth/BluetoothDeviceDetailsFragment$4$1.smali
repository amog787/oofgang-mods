.class Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->updateView(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$content:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;Ljava/lang/String;I)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$address:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$content:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "BTDeviceDetailsFrg"

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 541
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$content:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$content:I

    if-nez v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$address:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getKeyFunction(Ljava/lang/String;)I

    move-result v1

    .line 544
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    div-int/lit8 v3, v1, 0xa

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$202(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I

    .line 545
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$402(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I

    .line 546
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result p0

    invoke-static {v2, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$content:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "device_address"

    if-ne v1, v2, :cond_2

    .line 551
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v4, v4, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->earphone_support_current_version:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v4, v4, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v4

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 552
    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$content:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 553
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getBattaryInfo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 555
    rem-int/lit16 v2, v1, 0x3e8

    .line 556
    div-int/lit16 v1, v1, 0x3e8

    .line 557
    rem-int/lit16 v3, v1, 0x3e8

    .line 558
    div-int/lit16 v1, v1, 0x3e8

    .line 559
    rem-int/lit16 v4, v1, 0x3e8

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateView detail battery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " left = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " right="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " box = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;III)Ljava/lang/String;

    move-result-object v1

    .line 562
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->this$1:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;->val$address:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->updateSumary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
