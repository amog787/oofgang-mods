.class Lcom/android/settings/users/AppRestrictionsFragment$3;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 287
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 290
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment;->access$100(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/users/AppRestrictionsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    const/4 p0, 0x0

    return-object p0
.end method
