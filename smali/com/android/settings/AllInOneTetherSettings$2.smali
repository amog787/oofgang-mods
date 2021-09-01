.class Lcom/android/settings/AllInOneTetherSettings$2;
.super Ljava/lang/Object;
.source "AllInOneTetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AllInOneTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AllInOneTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AllInOneTetherSettings;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings$2;->this$0:Lcom/android/settings/AllInOneTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings$2;->this$0:Lcom/android/settings/AllInOneTetherSettings;

    invoke-static {p0}, Lcom/android/settings/AllInOneTetherSettings;->access$400(Lcom/android/settings/AllInOneTetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings$2;->this$0:Lcom/android/settings/AllInOneTetherSettings;

    invoke-static {p0}, Lcom/android/settings/AllInOneTetherSettings;->access$400(Lcom/android/settings/AllInOneTetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
