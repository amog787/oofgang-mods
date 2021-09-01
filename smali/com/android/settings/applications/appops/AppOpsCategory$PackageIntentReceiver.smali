.class public Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    .line 93
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;->mLoader:Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    return-void
.end method
