.class Lcom/android/settings/network/TetherPreferenceController$1;
.super Ljava/lang/Object;
.source "TetherPreferenceController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummary()V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 75
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/TetherPreferenceController;->access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothProfile;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 77
    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method
