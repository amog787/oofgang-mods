.class Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLoadingTask"
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
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$100(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/users/AppRestrictionsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->fetchAndMergeApps()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 324
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$500(Lcom/android/settings/users/AppRestrictionsFragment;)V

    return-void
.end method
