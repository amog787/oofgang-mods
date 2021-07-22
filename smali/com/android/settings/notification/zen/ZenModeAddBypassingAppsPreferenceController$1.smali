.class Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenModeAddBypassingAppsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
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

    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    .line 90
    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    .line 89
    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->access$202(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$Session;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
