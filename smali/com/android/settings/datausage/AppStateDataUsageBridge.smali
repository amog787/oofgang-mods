.class public Lcom/android/settings/datausage/AppStateDataUsageBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateDataUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
    }
.end annotation


# instance fields
.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 31
    iput-object p3, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 40
    new-instance v4, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-object v5, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v7, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 41
    invoke-virtual {v6, v7}, Lcom/android/settings/datausage/DataSaverBackend;->isBlacklisted(I)Z

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;-><init>(ZZ)V

    iput-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    .line 47
    new-instance p2, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-object v0, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p3}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 48
    invoke-virtual {p0, p3}, Lcom/android/settings/datausage/DataSaverBackend;->isBlacklisted(I)Z

    move-result p0

    invoke-direct {p2, v0, p0}, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;-><init>(ZZ)V

    iput-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
