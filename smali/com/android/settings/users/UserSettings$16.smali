.class Lcom/android/settings/users/UserSettings$16;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$16;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1118
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$16;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1126
    aget-object p1, p1, v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1127
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$16;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$16;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/users/UserSettings;->access$2100(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1131
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$16;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->access$300(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1118
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$16;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1121
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$16;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method
