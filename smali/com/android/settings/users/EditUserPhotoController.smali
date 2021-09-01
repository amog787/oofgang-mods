.class public Lcom/android/settings/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;,
        Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropPictureUri:Landroid/net/Uri;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mImageView:Landroid/widget/ImageView;

.field private mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field private mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPhotoSize:I

.field private final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    .line 98
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 99
    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    xor-int/lit8 p1, p5, 0x1

    const-string p2, "CropEditUserPhoto.jpg"

    .line 100
    invoke-direct {p0, v0, p2, p1}, Lcom/android/settings/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    .line 101
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    xor-int/lit8 p2, p5, 0x1

    const-string p5, "TakeEditUserPhoto2.jpg"

    invoke-direct {p0, p1, p5, p2}, Lcom/android/settings/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 102
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/users/EditUserPhotoController;->getPhotoSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    .line 103
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/settings/users/EditUserPhotoController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/users/EditUserPhotoController$1;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    .line 110
    iput-object p4, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->showUpdatePhotoPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->takePhoto()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->choosePhoto()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/users/EditUserPhotoController;)Landroid/net/Uri;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/users/EditUserPhotoController;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->cropPhoto()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/EditUserPhotoController;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private appendCropExtras(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "crop"

    const-string v1, "true"

    .line 264
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "scale"

    const/4 v1, 0x1

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scaleUpIfNeeded"

    .line 266
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "aspectX"

    .line 267
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    .line 268
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    iget v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    const-string v1, "outputX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    iget p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    const-string v0, "outputY"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1

    const-string p0, "output"

    .line 257
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    invoke-static {p0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method private choosePhoto()V
    .locals 3

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 213
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private copyAndCropPhoto(Landroid/net/Uri;)V
    .locals 1

    .line 217
    new-instance v0, Lcom/android/settings/users/EditUserPhotoController$5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/EditUserPhotoController$5;-><init>(Lcom/android/settings/users/EditUserPhotoController;Landroid/net/Uri;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 235
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 366
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const-string p0, "com.android.settings.files"

    .line 370
    invoke-static {p1, p0, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private cropPhoto()V
    .locals 3

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 243
    invoke-direct {p0, v0}, Lcom/android/settings/users/EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 247
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 250
    throw p0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    :goto_0
    return-void
.end method

.method private static getPhotoSize(Landroid/content/Context;)I
    .locals 6

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const-string p0, "display_max_dim"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 356
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 357
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 360
    throw v0
.end method

.method static loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 0

    .line 391
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private onPhotoCropped(Landroid/net/Uri;Z)V
    .locals 1

    .line 274
    new-instance v0, Lcom/android/settings/users/EditUserPhotoController$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/users/EditUserPhotoController$6;-><init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 348
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showUpdatePhotoPopup()V
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/android/settings/users/PhotoCapabilityUtils;->canTakePhoto(Landroid/content/Context;)Z

    move-result v1

    .line 146
    invoke-static {v0}, Lcom/android/settings/users/PhotoCapabilityUtils;->canChoosePhoto(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "no_set_user_icon"

    if-eqz v1, :cond_1

    .line 155
    sget v1, Lcom/android/settings/R$string;->user_image_take_photo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v5, Lcom/android/settings/users/EditUserPhotoController$2;

    invoke-direct {v5, p0}, Lcom/android/settings/users/EditUserPhotoController$2;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    .line 162
    new-instance v6, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v2, :cond_2

    .line 167
    sget v1, Lcom/android/settings/R$string;->user_image_choose_photo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Lcom/android/settings/users/EditUserPhotoController$3;

    invoke-direct {v2, p0}, Lcom/android/settings/users/EditUserPhotoController$3;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    .line 174
    new-instance v5, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_2
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 180
    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v2, 0x2

    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 183
    new-instance v2, Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->update_user_photo_popup_min_width:I

    .line 186
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 185
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    const v0, 0x800003

    .line 188
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 190
    new-instance v0, Lcom/android/settings/users/EditUserPhotoController$4;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/EditUserPhotoController$4;-><init>(Lcom/android/settings/users/EditUserPhotoController;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private takePhoto()V
    .locals 2

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    .line 117
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    :goto_0
    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 121
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    return p3

    .line 125
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->cropPhoto()V

    goto :goto_1

    .line 128
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/users/EditUserPhotoController;->copyAndCropPhoto(Landroid/net/Uri;)V

    :goto_1
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removeNewUserPhotoBitmapFile()V
    .locals 2

    .line 395
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "NewUserPhoto.png"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method saveNewUserPhotoBitmap()Ljava/io/File;
    .locals 5

    .line 374
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 378
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "NewUserPhoto.png"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 380
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 381
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 382
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "EditUserPhotoController"

    const-string v2, "Cannot create temp file"

    .line 385
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
