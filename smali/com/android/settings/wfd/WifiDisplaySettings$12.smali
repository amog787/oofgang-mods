.class Lcom/android/settings/wfd/WifiDisplaySettings$12;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$nameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->val$nameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 697
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->val$nameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 701
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/hardware/display/DisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
