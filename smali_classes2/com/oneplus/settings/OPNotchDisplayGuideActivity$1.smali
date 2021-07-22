.class Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;
.super Landroid/os/AsyncTask;
.source "OPNotchDisplayGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setOverlay(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

.field final synthetic val$currentPackageName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->this$0:Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

    iput-object p2, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->val$currentPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    const-string p1, "package_device_default"

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 196
    const-class p1, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set overlay currentPackageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->val$currentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->this$0:Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->access$000(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->val$currentPackageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 199
    :cond_0
    const-class p1, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set overlay packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->this$0:Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->access$000(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->val$packageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    const-class p1, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error enabling overlay."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 212
    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->this$0:Lcom/oneplus/settings/OPNotchDisplayGuideActivity;

    .line 213
    invoke-static {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->access$100(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->overlay_toast_failed_to_apply:I

    const/4 v0, 0x1

    .line 212
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
