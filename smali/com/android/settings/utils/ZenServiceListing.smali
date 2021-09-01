.class public Lcom/android/settings/utils/ZenServiceListing;
.super Ljava/lang/Object;
.source "ZenServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ZenServiceListing$Callback;
    }
.end annotation


# instance fields
.field private final mApprovedComponents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private final mContext:Landroid/content/Context;

.field private final mNm:Landroid/app/NotificationManager;

.field private final mZenCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/utils/ZenServiceListing$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/settings/utils/ZenServiceListing;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    const-string p2, "notification"

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    return-void
.end method

.method private static getActivities(Lcom/android/settings/utils/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/utils/ManagedServiceSettings$Config;",
            "Ljava/util/List<",
            "Landroid/content/pm/ComponentInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 122
    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->configIntentAction:Ljava/lang/String;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x81

    invoke-virtual {p2, v1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 128
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 129
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getServices(Lcom/android/settings/utils/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/utils/ManagedServiceSettings$Config;",
            "Ljava/util/List<",
            "Landroid/content/pm/ComponentInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 96
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x84

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    .line 101
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 102
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 103
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 105
    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": it does not require the permission "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findService(Landroid/content/ComponentName;)Landroid/content/pm/ComponentInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ComponentInfo;

    .line 54
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public reloadApprovedServices()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v2, p0, Lcom/android/settings/utils/ZenServiceListing;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v3, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/settings/utils/ZenServiceListing;->getServices(Lcom/android/settings/utils/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/utils/ZenServiceListing;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v3, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/settings/utils/ZenServiceListing;->getActivities(Lcom/android/settings/utils/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ComponentInfo;

    .line 78
    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/utils/ZenServiceListing$Callback;

    .line 87
    iget-object v2, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    invoke-interface {v1, v2}, Lcom/android/settings/utils/ZenServiceListing$Callback;->onComponentsReloaded(Ljava/util/Set;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
