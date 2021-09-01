.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showResetPasswordDefaultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/app/Activity;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$300(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$300(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->val$activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 996
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
