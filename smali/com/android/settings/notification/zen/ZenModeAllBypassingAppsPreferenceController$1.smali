.class Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

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

    .line 236
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

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

    .line 218
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList(Ljava/util/List;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

    return-void
.end method
