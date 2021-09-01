.class Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;
.super Ljava/lang/Object;
.source "DeviceAdminListItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDescription:Ljava/lang/CharSequence;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/app/admin/DeviceAdminInfo;

.field private final mKey:Ljava/lang/String;

.field private final mName:Ljava/lang/CharSequence;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 43
    new-instance p2, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getUserIdFromDeviceAdminInfo(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mUserHandle:Landroid/os/UserHandle;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mKey:Ljava/lang/String;

    const-string p2, "device_policy"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2, p1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mName:Ljava/lang/CharSequence;

    .line 49
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2, p1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting description to null because can\'t find resource: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeviceAdminListItem"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2, p1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static getUserIdFromDeviceAdminInfo(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 0

    .line 101
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;)I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mName:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->compareTo(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;)I

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 91
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    const-string p1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 86
    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getUserIdFromDeviceAdminInfo(Landroid/app/admin/DeviceAdminInfo;)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getUserIdFromDeviceAdminInfo(Landroid/app/admin/DeviceAdminInfo;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->mInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListItem;->getUserIdFromDeviceAdminInfo(Landroid/app/admin/DeviceAdminInfo;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
