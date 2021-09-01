.class Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 253
    invoke-static {p1}, Lcom/android/settings/dashboard/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p1, p0}, Lcom/android/settings/dashboard/CategoryManager;->reloadAllCategories(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    invoke-static {}, Lcom/android/settings/core/SettingsBaseActivity;->access$100()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/CategoryManager;->updateCategoryFromBlacklist(Ljava/util/Set;)V

    .line 265
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-static {p0}, Lcom/android/settings/core/SettingsBaseActivity;->access$200(Lcom/android/settings/core/SettingsBaseActivity;)V

    return-void
.end method
