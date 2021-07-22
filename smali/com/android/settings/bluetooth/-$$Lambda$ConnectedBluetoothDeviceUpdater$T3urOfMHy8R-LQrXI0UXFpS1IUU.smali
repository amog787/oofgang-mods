.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$T3urOfMHy8R-LQrXI0UXFpS1IUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$T3urOfMHy8R-LQrXI0UXFpS1IUU;->f$0:Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$T3urOfMHy8R-LQrXI0UXFpS1IUU;->f$0:Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->lambda$addPreference$0$ConnectedBluetoothDeviceUpdater(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
