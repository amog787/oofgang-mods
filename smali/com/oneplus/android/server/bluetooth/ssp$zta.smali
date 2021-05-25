.class Lcom/oneplus/android/server/bluetooth/ssp$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/bluetooth/ssp;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/ssp;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/ssp;->zta(Lcom/oneplus/android/server/bluetooth/ssp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/ssp;->zta(Lcom/oneplus/android/server/bluetooth/ssp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/ssp;->you(Lcom/oneplus/android/server/bluetooth/ssp;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/ssp;->zta(Lcom/oneplus/android/server/bluetooth/ssp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/ssp;->tsu(Lcom/oneplus/android/server/bluetooth/ssp;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Airplane mode - BLE_ON, package: "

    goto :goto_1

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/ssp;->tsu(Lcom/oneplus/android/server/bluetooth/ssp;)Lcom/oneplus/android/server/bluetooth/kth;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Airplane mode - ON, package: "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/ssp$zta;->zta:Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/ssp;->sis(Lcom/oneplus/android/server/bluetooth/ssp;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
