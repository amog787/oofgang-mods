.class Lcom/android/settings/applications/manageapplications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;->showDeleteDialog()V
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

    .line 1201
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1203
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    new-instance p2, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$302(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;)Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;

    .line 1204
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->hideUninstallMultipleAppsListMenu()V

    .line 1205
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$502(Lcom/android/settings/applications/manageapplications/ManageApplications;Ljava/util/List;)Ljava/util/List;

    .line 1206
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$602(Lcom/android/settings/applications/manageapplications/ManageApplications;Ljava/util/List;)Ljava/util/List;

    .line 1207
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method
