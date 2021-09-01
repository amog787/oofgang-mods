.class public final synthetic Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDefaultFragment$l-LBUVrJXXgaOkJZIgA1Iy1UjZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDefaultFragment$l-LBUVrJXXgaOkJZIgA1Iy1UjZw;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    return-void
.end method


# virtual methods
.method public final onUsbConnectionChanged(ZJII)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDefaultFragment$l-LBUVrJXXgaOkJZIgA1Iy1UjZw;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->lambda$new$0$UsbDefaultFragment(ZJII)V

    return-void
.end method
