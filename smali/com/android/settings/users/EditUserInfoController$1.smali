.class Lcom/android/settings/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserInfoController;

.field final synthetic val$completeCallback:Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController;Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$completeCallback:Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {p1}, Lcom/android/settings/users/EditUserInfoController;->clear()V

    .line 212
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$completeCallback:Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;

    if-eqz p0, :cond_0

    .line 213
    invoke-interface {p0}, Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;->onNegativeOrCancel()V

    :cond_0
    return-void
.end method
