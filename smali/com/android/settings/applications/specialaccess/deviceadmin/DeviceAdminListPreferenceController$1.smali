.class Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminListPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController$1;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController$1;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->updateList()V

    :cond_0
    return-void
.end method
