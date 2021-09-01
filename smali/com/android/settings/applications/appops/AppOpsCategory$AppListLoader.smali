.class public Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

.field mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

.field final mState:Lcom/android/settings/applications/appops/AppOpsState;

.field final mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance p1, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {p1}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    .line 124
    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    .line 125
    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 148
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/settings/applications/appops/AppOpsState;->buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 3

    .line 215
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onStopLoading()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 224
    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 185
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 188
    :cond_2
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
