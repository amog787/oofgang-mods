.class public Lcom/android/settings/media/RemoteMediaSlice;
.super Ljava/lang/Object;
.source "RemoteMediaSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 121
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 122
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getMediaOutputSliceAction(Ljava/lang/String;)Landroidx/slice/builders/SliceAction;
    .locals 5

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 152
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_volume_remote:I

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 157
    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->media_output_label_title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 160
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v4, v3

    .line 159
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {v0, v1, v3, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getSliderInputAction(ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_id"

    .line 128
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 129
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 130
    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getSoundSettingAction(Ljava/lang/CharSequence;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;)Landroidx/slice/builders/SliceAction;
    .locals 5

    .line 135
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/notification/SoundSettings;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sound_settings:I

    .line 139
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 136
    invoke-static {v1, v2, p3, v3, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    .line 140
    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, p3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 143
    invoke-static {p0, p2, v4, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 176
    const-class p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 14

    .line 77
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 78
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    const-string v2, "RemoteMediaSlice"

    if-nez v1, :cond_0

    const-string p0, "Unable to get the slice worker."

    .line 80
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getActiveRemoteMediaDevice()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "No active remote media device"

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->remote_media_volume_option_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$drawable;->ic_volume_remote:I

    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 93
    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RoutingSessionInfo;

    .line 96
    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v9

    if-gtz v9, :cond_2

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add Slice. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": max volume is "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_2
    iget-object v10, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->media_output_label_title:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 103
    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v6

    .line 102
    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 104
    new-instance v11, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v11}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    .line 105
    invoke-virtual {v11, v4, v6}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 106
    invoke-virtual {v11, v3}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    add-int/lit8 v12, v7, 0x1

    .line 107
    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v7, v13}, Lcom/android/settings/media/RemoteMediaSlice;->getSliderInputAction(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 108
    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v4, v7}, Lcom/android/settings/media/RemoteMediaSlice;->getSoundSettingAction(Ljava/lang/CharSequence;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;)Landroidx/slice/builders/SliceAction;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 109
    invoke-virtual {v11, v9}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 110
    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v7

    invoke-virtual {v11, v7}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 104
    invoke-virtual {v0, v11}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 111
    new-instance v7, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 112
    invoke-virtual {v7, v10}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 113
    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 114
    invoke-virtual {v7, v5, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 115
    invoke-virtual {v8}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/media/RemoteMediaSlice;->getMediaOutputSliceAction(Ljava/lang/String;)Landroidx/slice/builders/SliceAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 111
    invoke-virtual {v0, v7}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move v7, v12

    goto/16 :goto_0

    .line 117
    :cond_3
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 166
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.app.slice.extra.RANGE_VALUE"

    const/4 v1, -0x1

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "media_id"

    .line 69
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->adjustSessionVolume(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
