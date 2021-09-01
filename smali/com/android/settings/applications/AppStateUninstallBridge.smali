.class public Lcom/android/settings/applications/AppStateUninstallBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateUninstallBridge.java"


# instance fields
.field private mBackend:Lcom/android/settings/applications/UninstallAppsBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/applications/UninstallAppsBackend;)V
    .locals 0

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 24
    iput-object p4, p0, Lcom/android/settings/applications/AppStateUninstallBridge;->mBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    return-void
.end method

.method public static final enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getSwitchOnClickListener$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 1

    .line 43
    check-cast p2, Landroid/view/ViewGroup;

    .line 44
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p2, :cond_2

    .line 46
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/widget/CheckBox;->toggle()V

    .line 50
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 51
    iget-object p2, p0, Lcom/android/settings/applications/AppStateUninstallBridge;->mBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/UninstallAppsBackend;->addApp(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/AppStateUninstallBridge;->mBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/UninstallAppsBackend;->removeApp(Ljava/lang/String;)V

    .line 55
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateUninstallBridge;->mBackend:Lcom/android/settings/applications/UninstallAppsBackend;

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallAppsBackend;->printList()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$AppStateUninstallBridge$2lHZI2jJH-e_b_orlBcsYaeeQNI;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/-$$Lambda$AppStateUninstallBridge$2lHZI2jJH-e_b_orlBcsYaeeQNI;-><init>(Lcom/android/settings/applications/AppStateUninstallBridge;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$getSwitchOnClickListener$0$AppStateUninstallBridge(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppStateUninstallBridge;->lambda$getSwitchOnClickListener$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V

    return-void
.end method

.method protected loadAllExtraInfo()V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
