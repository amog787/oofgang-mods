.class final Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "UsbDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 4

    .line 175
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-wide v2, v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mPreviousFunctions:J

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 2

    .line 167
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 169
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    const-wide/16 v0, 0x20

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    .line 170
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    return-void
.end method
