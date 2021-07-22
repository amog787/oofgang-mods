.class public Lcom/android/settings/media/MediaOutputGroupSlice;
.super Ljava/lang/Object;
.source "MediaOutputGroupSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field static final ACTION_MEDIA_SESSION_OPERATION:I = 0x2

.field static final ACTION_VOLUME_ADJUSTMENT:I = 0x1

.field static final CUSTOMIZED_ACTION:Ljava/lang/String; = "customized_action"

.field static final ERROR:I = -0x1

.field static final GROUP_DEVICES:Ljava/lang/String; = "group_devices"

.field static final MEDIA_DEVICE_ID:Ljava/lang/String; = "media_device_id"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addRow(Landroidx/slice/builders/ListBuilder;Ljava/util/List;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/builders/ListBuilder;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->hasAdjustVolumeUserRestriction()Z

    move-result v3

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getDeselectableMediaDevice()Ljava/util/List;

    move-result-object v4

    .line 130
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/media/MediaDevice;

    .line 131
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getMaxVolume()I

    move-result v7

    .line 132
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    .line 133
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 135
    invoke-direct {v0, v10, v11, v11}, Lcom/android/settings/media/MediaOutputGroupSlice;->getBroadcastIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v10

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getDisabledCheckboxIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    const-string v13, ""

    .line 134
    invoke-static {v10, v12, v11, v13}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v10

    .line 138
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v12

    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v14

    const/4 v15, 0x2

    add-int/2addr v14, v15

    .line 138
    invoke-direct {v0, v12, v14, v15}, Lcom/android/settings/media/MediaOutputGroupSlice;->getBroadcastIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v12

    iget-object v14, v0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    sget v15, Lcom/android/settings/R$drawable;->ic_check_box_anim:I

    .line 141
    invoke-static {v14, v15}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    .line 137
    invoke-static {v12, v14, v13, v2}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v12

    const/4 v13, 0x1

    if-lez v7, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 146
    new-instance v7, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    .line 147
    invoke-virtual {v7, v8, v11}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 148
    invoke-virtual {v7, v9}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 149
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v9, v13

    .line 149
    invoke-direct {v0, v8, v9, v13}, Lcom/android/settings/media/MediaOutputGroupSlice;->getBroadcastIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 152
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getMaxVolume()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 153
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getCurrentVolume()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    if-eqz v2, :cond_2

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->isDeviceIncluded(Ljava/util/Collection;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v13, :cond_2

    .line 157
    :cond_1
    invoke-virtual {v7, v10}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {v7, v12}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 161
    :goto_1
    invoke-virtual {v1, v7}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    goto/16 :goto_0

    .line 163
    :cond_3
    new-instance v7, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 164
    invoke-virtual {v7, v8, v11}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 165
    invoke-virtual {v7, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    if-eqz v2, :cond_5

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->isDeviceIncluded(Ljava/util/Collection;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 168
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v13, :cond_5

    .line 169
    :cond_4
    invoke-virtual {v7, v10}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    goto :goto_2

    .line 171
    :cond_5
    invoke-virtual {v7, v12}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 173
    :goto_2
    invoke-virtual {v1, v7}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private getBroadcastIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 3

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "media_device_id"

    .line 193
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "customized_action"

    .line 194
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 195
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    const/high16 p1, 0x8000000

    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getDisabledCheckboxIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    .line 179
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_check_box_blue_24dp:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 180
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v2, 0x4c

    .line 184
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 185
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 266
    const-class p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 11

    .line 79
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 80
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    .line 82
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_speaker_group_black_24dp:I

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 84
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 85
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v4

    if-nez v4, :cond_0

    .line 86
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSessionVolumeMax()I

    move-result v4

    .line 89
    iget-object v5, p0, Lcom/android/settings/media/MediaOutputGroupSlice;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->media_output_group:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x60065b1d

    const-string v7, "group_devices"

    const/4 v8, 0x2

    .line 91
    invoke-direct {p0, v7, v6, v8}, Lcom/android/settings/media/MediaOutputGroupSlice;->getBroadcastIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v9, 0x0

    .line 90
    invoke-static {v6, v1, v9, v7}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v6

    const v10, 0x60065b1f

    .line 96
    invoke-direct {p0, v7, v10, v8}, Lcom/android/settings/media/MediaOutputGroupSlice;->getBroadcastIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v8

    .line 99
    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    const-string v10, ""

    .line 95
    invoke-static {v8, v2, v9, v10}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    if-lez v4, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->hasAdjustVolumeUserRestriction()Z

    move-result v8

    if-nez v8, :cond_1

    .line 102
    new-instance v8, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    .line 103
    invoke-virtual {v8, v1, v9}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 104
    invoke-virtual {v8, v2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 105
    invoke-virtual {v8, v5}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 106
    invoke-virtual {v8, v6}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    const v1, 0x60065b1e

    .line 107
    invoke-direct {p0, v7, v1, v3}, Lcom/android/settings/media/MediaOutputGroupSlice;->getBroadcastIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 110
    invoke-virtual {v8, v4}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 111
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSessionVolume()I

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 102
    invoke-virtual {v0, v8}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 113
    :cond_1
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 114
    invoke-virtual {v2, v1, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 115
    invoke-virtual {v2, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 116
    invoke-virtual {v2, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 113
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 119
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/media/MediaOutputGroupSlice;->addRow(Landroidx/slice/builders/ListBuilder;Ljava/util/List;Z)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v9}, Lcom/android/settings/media/MediaOutputGroupSlice;->addRow(Landroidx/slice/builders/ListBuilder;Ljava/util/List;Z)V

    .line 121
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 209
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_GROUP_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "media_device_id"

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "MediaOutputGroupSlice"

    if-eqz v1, :cond_0

    const-string p0, "Unable to handle notification. The device is unavailable"

    .line 216
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputGroupSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v1

    const-string v3, "customized_action"

    const/4 v4, -0x1

    .line 221
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    const-string v6, ") is unavailable"

    if-eq v3, v5, :cond_5

    const/4 p1, 0x2

    if-eq v3, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to adjust session volume. The device("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->isDeviceIncluded(Ljava/util/Collection;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->addDeviceToPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getDeselectableMediaDevice()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->isDeviceIncluded(Ljava/util/Collection;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->removeDeviceFromPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    goto :goto_0

    .line 253
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not selectable nor deselectable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    .line 223
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_6

    const-string p0, "Unable to adjust volume. The volume value is unavailable"

    .line 225
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string v3, "group_devices"

    .line 229
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->adjustSessionVolume(I)V

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to adjust volume. The device("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_8
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->adjustVolume(Lcom/android/settingslib/media/MediaDevice;I)V

    :goto_0
    return-void
.end method
