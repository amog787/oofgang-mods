.class Lcom/android/settings/password/SetupSkipDialog$1;
.super Ljava/lang/Object;
.source "SetupSkipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/SetupSkipDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/settings/password/SetupSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/password/SetupSkipDialog;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/password/SetupSkipDialog$1;->this$0:Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iget-object p1, p0, Lcom/android/settings/password/SetupSkipDialog$1;->this$0:Lcom/android/settings/password/SetupSkipDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 156
    iget-object p0, p0, Lcom/android/settings/password/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
