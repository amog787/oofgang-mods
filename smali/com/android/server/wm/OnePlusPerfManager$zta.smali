.class Lcom/android/server/wm/OnePlusPerfManager$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OnePlusPerfManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OnePlusPerfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$zta;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$zta;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-static {p1}, Lcom/android/server/wm/OnePlusPerfManager;->access$000(Lcom/android/server/wm/OnePlusPerfManager;)Landroid/util/BoostFramework;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "OPPerf"

    const-string p2, "Switched to Guest Mode"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "20801"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Applying Boost for AVICII GuestMode"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x14

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$zta;->zta:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-static {p0}, Lcom/android/server/wm/OnePlusPerfManager;->access$000(Lcom/android/server/wm/OnePlusPerfManager;)Landroid/util/BoostFramework;

    move-result-object p0

    const/16 p2, 0x3a98

    invoke-virtual {p0, p2, p1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x40c20000    # 6.0625f
        0x28
        0x40c1c000    # 6.0546875f
        0x32
        0x40c20200
        0x28
        0x40c1c200
        0x32
        0x40804000    # 4.0078125f
        0xfff
        0x40804100
        0xfff
        0x40804200
        0xfff
        0x40800000    # 4.0f
        0x5c6
        0x40800100    # 4.000122f
        0x553
        0x40800200    # 4.000244f
        0x6ac
    .end array-data
.end method
