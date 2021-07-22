.class Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;
.super Ljava/lang/Object;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MHS se error == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mhs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->mhs_call_back_error:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 313
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$500(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    .line 314
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$600(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    return-void
.end method

.method public onSuccess(Z)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is se MHS Allowed == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mhs"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$500(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$400(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$600(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    .line 305
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$700(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    :goto_0
    return-void
.end method

.method public onTimeout()V
    .locals 3

    const-string v0, "mhs"

    const-string v1, "MHS se time out"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->mhs_call_back_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$500(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    .line 322
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$600(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    return-void
.end method
