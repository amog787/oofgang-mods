.class Lcom/android/settings/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 180
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p1, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->access$400(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->access$202(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 185
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 187
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v2, v1, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    .line 188
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
