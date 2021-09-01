.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;
.super Landroid/os/Handler;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 164
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 172
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->oneplus_multi_app_init:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v1, Lcom/oneplus/loading/DialogLoadingHelper;

    invoke-direct {v1, v0}, Lcom/oneplus/loading/DialogLoadingHelper;-><init>(Landroid/app/Dialog;)V

    .line 174
    invoke-virtual {v1}, Lcom/oneplus/loading/LoadingHelper;->beginShowProgress()V

    .line 176
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 178
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V

    .line 179
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;I)V

    invoke-virtual {v1, v0}, Lcom/oneplus/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/loading/LoadingHelper$FinishShowCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
