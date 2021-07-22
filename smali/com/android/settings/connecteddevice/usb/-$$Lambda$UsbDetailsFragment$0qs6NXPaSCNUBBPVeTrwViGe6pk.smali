.class public final synthetic Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsFragment$0qs6NXPaSCNUBBPVeTrwViGe6pk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsFragment$0qs6NXPaSCNUBBPVeTrwViGe6pk;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onUsbConnectionChanged(ZJII)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsFragment$0qs6NXPaSCNUBBPVeTrwViGe6pk;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->lambda$new$0$UsbDetailsFragment(ZJII)V

    return-void
.end method
