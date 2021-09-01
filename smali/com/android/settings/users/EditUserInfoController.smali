.class public Lcom/android/settings/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;,
        Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
    }
.end annotation


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    return-object p0
.end method


# virtual methods
.method canChangePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 228
    invoke-static {p1}, Lcom/android/settings/users/PhotoCapabilityUtils;->canCropPhoto(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 229
    invoke-static {p1}, Lcom/android/settings/users/PhotoCapabilityUtils;->canChoosePhoto(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 230
    invoke-static {p1}, Lcom/android/settings/users/PhotoCapabilityUtils;->canTakePhoto(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 86
    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method public createDialog(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;)Landroid/app/Dialog;
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p7

    .line 132
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p6

    .line 133
    iput-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    .line 134
    iget-object v2, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    if-nez v2, :cond_0

    .line 135
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 138
    sget v3, Lcom/android/settings/R$layout;->edit_user_info_dialog_content:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 140
    sget v3, Lcom/android/settings/R$id;->user_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object v5, p3

    .line 141
    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    sget v6, Lcom/android/settings/R$id;->user_photo:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 145
    iget-object v9, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 146
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/EditUserInfoController;->canChangePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 150
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_2
    iget-object v4, v7, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 154
    invoke-static {v0, v4}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, p2

    .line 158
    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 161
    invoke-virtual {p0, p1, v6, v4}, Lcom/android/settings/users/EditUserInfoController;->createEditUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    .line 163
    :cond_4
    new-instance v9, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v9, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    .line 164
    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v9, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v9, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/users/EditUserInfoController$3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v3

    move-object v3, p3

    move-object/from16 v4, p5

    move-object v5, p2

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/users/EditUserInfoController$3;-><init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;)V

    .line 167
    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/android/settings/users/EditUserInfoController$2;

    invoke-direct {v1, p0, v8}, Lcom/android/settings/users/EditUserInfoController$2;-><init>(Lcom/android/settings/users/EditUserInfoController;Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;)V

    .line 199
    invoke-virtual {v9, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/users/EditUserInfoController$1;

    invoke-direct {v0, p0, v8}, Lcom/android/settings/users/EditUserInfoController$1;-><init>(Lcom/android/settings/users/EditUserInfoController;Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;)V

    .line 208
    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 220
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 223
    iget-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method createEditUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/users/EditUserPhotoController;
    .locals 7

    .line 236
    new-instance v6, Lcom/android/settings/users/EditUserPhotoController;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/EditUserPhotoController;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    return-object v6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 123
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pending_photo"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    const-string v1, "awaiting_result"

    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pending_photo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    if-eqz p0, :cond_1

    const-string v0, "awaiting_result"

    .line 112
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method
