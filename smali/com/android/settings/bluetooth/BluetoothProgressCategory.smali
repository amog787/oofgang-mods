.class public Lcom/android/settings/bluetooth/BluetoothProgressCategory;
.super Lcom/android/settings/ProgressCategory;
.source "BluetoothProgressCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 51
    sget v0, Lcom/android/settings/R$string;->bluetooth_no_devices_found:I

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setEmptyTextRes(I)V

    return-void
.end method
