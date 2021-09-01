.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;
.super Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 544
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "OPMultiAppListSettings"

    const-string v2, "Delete non required apps task failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "onCreate----createProfileForUser--onError"

    .line 545
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$2000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    const/4 v0, 0x1

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    .line 519
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/16 v3, 0x3e7

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 521
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 524
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/loading/LoadingHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/loading/LoadingHelper;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OPMultiAppListSettings"

    const-string v3, "Provisioning failed"

    .line 534
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v1, v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "user_setup_complete"

    invoke-static {v1, v2, v0, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
