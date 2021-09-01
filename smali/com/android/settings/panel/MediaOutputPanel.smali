.class public Lcom/android/settings/panel/MediaOutputPanel;
.super Ljava/lang/Object;
.source "MediaOutputPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mCallback:Lcom/android/settings/panel/PanelContentCallback;

.field private final mCb:Landroid/media/session/MediaController$Callback;

.field private final mContext:Landroid/content/Context;

.field private mIsCustomizedButtonUsed:Z

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mIsCustomizedButtonUsed:Z

    .line 256
    new-instance v0, Lcom/android/settings/panel/MediaOutputPanel$1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/MediaOutputPanel$1;-><init>(Lcom/android/settings/panel/MediaOutputPanel;)V

    iput-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mCb:Landroid/media/session/MediaController$Callback;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/panel/MediaOutputPanel;)Lcom/android/settings/panel/PanelContentCallback;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputPanel;
    .locals 1

    .line 79
    new-instance v0, Lcom/android/settings/panel/MediaOutputPanel;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/MediaOutputPanel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private dispatchCustomButtonStateChanged()V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/android/settings/panel/MediaOutputPanel;->hideCustomButtonIfNecessary()V

    .line 209
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    if-eqz p0, :cond_0

    .line 210
    invoke-interface {p0}, Lcom/android/settings/panel/PanelContentCallback;->onCustomizedButtonStateChanged()V

    :cond_0
    return-void
.end method

.method private getPackageIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 133
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 134
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 136
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "MediaOutputPanel"

    const-string v0, "Package is not found. Unable to get package icon."

    .line 144
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private hideCustomButtonIfNecessary()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    .line 216
    instance-of v0, v0, Lcom/android/settingslib/media/InfoMediaDevice;

    iput-boolean v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mIsCustomizedButtonUsed:Z

    return-void
.end method


# virtual methods
.method public getCustomizedButtonTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->service_stop:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_media_stream:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p0

    .line 112
    invoke-virtual {v0, p0}, Landroidx/core/graphics/drawable/IconCompat;->setTint(I)Landroidx/core/graphics/drawable/IconCompat;

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->output_switcher_panel_icon_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 119
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->convertCornerRadiusBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 123
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "MediaOutputPanel"

    const-string v1, "Media meta data does not contain icon information"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/android/settings/panel/MediaOutputPanel;->getPackageIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x679

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    .line 154
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    const-string v2, "media_package_name"

    .line 156
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    .line 158
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->media_output_panel_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->media_volume_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isCustomizedButtonUsed()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mIsCustomizedButtonUsed:Z

    return p0
.end method

.method public onClickCustomizedButton()V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->releaseSession()Z

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/settings/panel/MediaOutputPanel;->dispatchCustomButtonStateChanged()V

    return-void
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lcom/android/settings/panel/MediaOutputPanel;->dispatchCustomButtonStateChanged()V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/android/settings/panel/MediaOutputPanel;->dispatchCustomButtonStateChanged()V

    return-void
.end method

.method public onStart()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 223
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 224
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iput-object v2, p0, Lcom/android/settings/panel/MediaOutputPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 226
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v2, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContentCallback;->onHeaderChanged()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No media controller for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaOutputPanel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-nez v0, :cond_3

    .line 236
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    iput-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 239
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/settings/panel/MediaOutputPanel;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 248
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    return-void
.end method

.method public registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/panel/MediaOutputPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    return-void
.end method
