.class Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V
    .locals 0

    .line 1352
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method private synthetic lambda$packageDeleted$0()V
    .locals 3

    .line 1400
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->uninstallapps_toast_message:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 1400
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroidx/appcompat/widget/Toast;

    move-result-object p0

    .line 1401
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$packageDeleted$0$ManageApplications$PackageDeleteObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->lambda$packageDeleted$0()V

    return-void
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 4

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageDeleteObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " returnCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    if-eq p2, v0, :cond_2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const-string p2, "PackageDeleteObserver: fail: default"

    .line 1369
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "PackageDeleteObserver: Success"

    .line 1357
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p2, "PackageDeleteObserver: fail: DELETE_FAILED_DEVICE_POLICY_MANAGER"

    .line 1361
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p2, "PackageDeleteObserver: fail: DELETE_FAILED_OWNER_BLOCKED"

    .line 1365
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/UninstallAppsBackend;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/UninstallAppsBackend;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/UninstallAppsBackend;->getSize()I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Show toast as process is complete"

    .line 1375
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failedApps.size() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "Uninstallation process completed. Failed: "

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1381
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1000(Lcom/android/settings/applications/manageapplications/ManageApplications;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1385
    :cond_3
    new-instance p1, Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1386
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->uninstall_multiple_apps:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "09102019"

    invoke-direct {p1, v2, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1388
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_24dp:I

    .line 1389
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "Settings"

    .line 1390
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1391
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x0

    .line 1392
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 1393
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1394
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1396
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1397
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1399
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$PackageDeleteObserver$KlCNixOXZiqgm4rp2d2IsBYhRN4;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$PackageDeleteObserver$KlCNixOXZiqgm4rp2d2IsBYhRN4;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1404
    :cond_5
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method
