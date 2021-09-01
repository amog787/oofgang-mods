.class Lcom/android/settings/users/EditUserInfoController$3;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic val$completeCallback:Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;

.field final synthetic val$currentUserIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$currentUserName:Ljava/lang/CharSequence;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$3;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$currentUserName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$completeCallback:Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 174
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$currentUserName:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 175
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$currentUserName:Ljava/lang/CharSequence;

    .line 176
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz p2, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$3;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserInfoController;->access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;->onLabelChanged(Landroid/os/UserHandle;Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$3;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {p1}, Lcom/android/settings/users/EditUserInfoController;->access$100(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$3;->this$0:Lcom/android/settings/users/EditUserInfoController;

    .line 185
    invoke-static {p1}, Lcom/android/settings/users/EditUserInfoController;->access$100(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 186
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 187
    iget-object p2, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$callback:Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz p2, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$3;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserInfoController;->access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;->onPhotoChanged(Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$3;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {p1}, Lcom/android/settings/users/EditUserInfoController;->clear()V

    .line 194
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController$3;->val$completeCallback:Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;

    if-eqz p0, :cond_3

    .line 195
    invoke-interface {p0}, Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;->onPositive()V

    :cond_3
    return-void
.end method
