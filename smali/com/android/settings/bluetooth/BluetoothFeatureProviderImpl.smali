.class public Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;
.super Ljava/lang/Object;
.source "BluetoothFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetoothDeviceSettingsUri(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;
    .locals 0

    const/16 p0, 0x10

    .line 36
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method
