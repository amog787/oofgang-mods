.class Lcom/android/settings/development/OverlayCategoryPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "OverlayCategoryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/OverlayCategoryPreferenceController;->setOverlay(Ljava/lang/String;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

.field final synthetic val$currentPackageName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/development/OverlayCategoryPreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    iput-object p2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$currentPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    const-string p1, "package_device_default"

    .line 123
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$000(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$currentPackageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$000(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "OverlayCategoryPC"

    const-string v0, "Error enabling overlay."

    .line 130
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$100(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    .line 140
    invoke-static {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$200(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->overlay_toast_failed_to_apply:I

    const/4 v0, 0x1

    .line 139
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
