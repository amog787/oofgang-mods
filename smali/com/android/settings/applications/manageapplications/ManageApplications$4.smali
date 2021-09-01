.class Lcom/android/settings/applications/manageapplications/ManageApplications$4;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;->showUninstallMultipleAppsListMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 1307
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "ManageApplications"

    const-string v0, "Close Uninstall UI"

    .line 1310
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->hideUninstallMultipleAppsListMenu()V

    .line 1312
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/UninstallAppsBackend;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallAppsBackend;->removeAll()V

    return-void
.end method
