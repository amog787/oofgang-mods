.class Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;
.super Ljava/lang/Object;
.source "ZenModeAddBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList(Ljava/util/List;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method
