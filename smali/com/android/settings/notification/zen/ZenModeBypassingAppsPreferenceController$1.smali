.class Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenModeBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

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

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;)V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;)V

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

    .line 163
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->updateAppsBypassingDndSummaryText(Ljava/util/List;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;)V

    return-void
.end method
