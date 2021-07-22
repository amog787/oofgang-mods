.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothUpdateWorker$LoadBtManagerHandler$bFnvBLd7f0Am1rgQotC_UH_flVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothUpdateWorker$LoadBtManagerHandler$bFnvBLd7f0Am1rgQotC_UH_flVA;->f$0:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    return-void
.end method


# virtual methods
.method public final onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothUpdateWorker$LoadBtManagerHandler$bFnvBLd7f0Am1rgQotC_UH_flVA;->f$0:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->lambda$getLocalBtManager$1$BluetoothUpdateWorker$LoadBtManagerHandler(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method
