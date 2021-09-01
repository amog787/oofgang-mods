.class Lcom/android/settings/notification/zen/ZenModePeopleSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ZenModePeopleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModePeopleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 91
    invoke-static/range {v0 .. v5}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
