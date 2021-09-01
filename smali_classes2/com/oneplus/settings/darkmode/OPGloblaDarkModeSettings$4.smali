.class Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;
.super Lcom/oneplus/loading/LoadingHelper;
.source "OPGloblaDarkModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 0

    .line 254
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    sget v2, Lcom/android/settings/R$string;->oneplus_multi_app_init:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0

    .line 238
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method
