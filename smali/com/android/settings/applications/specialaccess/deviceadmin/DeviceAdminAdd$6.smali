.class Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 392
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 393
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v0, 0x1605b

    .line 392
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 394
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object v0, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 395
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
