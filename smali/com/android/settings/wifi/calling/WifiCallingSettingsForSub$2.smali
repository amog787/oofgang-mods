.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;
.super Landroid/telephony/ims/ProvisioningManager$Callback;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/telephony/ims/ProvisioningManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvisioningIntChanged(II)V
    .locals 0

    const/16 p2, 0x1c

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$200(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    :cond_1
    return-void
.end method
