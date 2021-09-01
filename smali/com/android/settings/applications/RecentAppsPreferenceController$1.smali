.class Lcom/android/settings/applications/RecentAppsPreferenceController$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "RecentAppsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RecentAppsPreferenceController;->onReloadDataCompleted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v1, v0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    .line 119
    invoke-static {v0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$000(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$plurals;->see_all_apps_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 119
    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {v1, p1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderDetails(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    .line 121
    iget-object p0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->apply()V

    return-void
.end method
