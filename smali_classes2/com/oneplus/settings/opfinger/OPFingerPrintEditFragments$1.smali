.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;
.super Landroid/os/Handler;
.source "OPFingerPrintEditFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/os/Looper;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto/16 :goto_0

    .line 127
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 100
    :cond_2
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v0, Lcom/android/settings/R$string;->oneplus_deleted_fingerprint_list:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 103
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    .line 106
    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 136
    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V

    goto :goto_0

    .line 130
    :cond_5
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    .line 131
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget p1, Lcom/android/settings/R$string;->oneplus_deleted_fingerprint_list_failed:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :cond_6
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 122
    :cond_7
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_deleteing_fingerprint_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_8
    :goto_0
    return-void
.end method
