.class Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppInfoDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 695
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-boolean p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    if-eqz p1, :cond_0

    return-void

    .line 699
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 700
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 701
    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 702
    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 704
    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isResourceOverlay()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 705
    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$200(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 706
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    goto :goto_1

    .line 703
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    :cond_3
    :goto_1
    return-void
.end method
