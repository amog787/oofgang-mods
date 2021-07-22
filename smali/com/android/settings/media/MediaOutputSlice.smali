.class public Lcom/android/settings/media/MediaOutputSlice;
.super Ljava/lang/Object;
.source "MediaOutputSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addRow(Lcom/android/settingslib/media/MediaDevice;Lcom/android/settingslib/media/MediaDevice;Landroidx/slice/builders/ListBuilder;)V
    .locals 5

    if-eqz p2, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 198
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p2

    .line 199
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    .line 203
    invoke-static {v1, v0, v2, p2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getMaxVolume()I

    move-result v3

    const/4 v4, 0x5

    if-lez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->hasAdjustVolumeUserRestriction()Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    new-instance v3, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    .line 208
    invoke-virtual {v3, v0, v2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 209
    invoke-virtual {v3, p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 210
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/media/MediaOutputSlice;->getSliderInputAction(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 212
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getMaxVolume()I

    move-result p2

    invoke-virtual {v3, p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 213
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getCurrentVolume()I

    move-result p2

    invoke-virtual {v3, p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 215
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p1

    if-ne p1, v4, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getEndItemSliceAction()Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 219
    :cond_0
    invoke-virtual {p3, v3}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 221
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addRow device = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MaxVolume = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getMaxVolume()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaOutputSlice"

    .line 221
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getMediaDeviceRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p2

    .line 225
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getEndItemSliceAction()Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 229
    :cond_2
    invoke-virtual {p3, p2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 233
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getTransferringMediaDeviceRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RangeBuilder;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/slice/builders/ListBuilder;->addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 235
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getMediaDeviceRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :goto_0
    return-void
.end method

.method private getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 1

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    const-class p0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "media_device_id"

    .line 343
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 344
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x8000000

    .line 345
    invoke-static {p1, p3, v0, p0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 264
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceIconCompat() device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", drawable is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOutputSlice"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const p1, 0x1080333

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    :cond_0
    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getEndItemSliceAction()Landroidx/slice/builders/SliceAction;
    .locals 4

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT_GROUP"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 254
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 253
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 257
    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->ic_add_blue_24dp:I

    .line 258
    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->add:I

    .line 260
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 256
    invoke-static {v0, v1, v2, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getGroupRow()Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_speaker_group_black_24dp:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 181
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSessionName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->media_output_group:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const v3, 0x6e929491

    const-string v4, "media_group_device"

    .line 185
    invoke-direct {p0, v2, v4, v3}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    .line 186
    invoke-static {v2, v0, v3, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    .line 188
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 189
    invoke-virtual {v4, v0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 190
    invoke-virtual {v4, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 191
    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 192
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getEndItemSliceAction()Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-object v4
.end method

.method private getGroupSliderRow()Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 7

    .line 157
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_speaker_group_black_24dp:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSessionName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->media_output_group:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const-string v3, "media_group_device"

    const v4, 0x6e929491

    .line 163
    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v5, 0x0

    .line 164
    invoke-static {v2, v0, v5, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    .line 166
    new-instance v6, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v6}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    .line 167
    invoke-virtual {v6, v0, v5}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 168
    invoke-virtual {v6, v1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 169
    invoke-virtual {v6, v2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 170
    invoke-direct {p0, v4, v3}, Lcom/android/settings/media/MediaOutputSlice;->getSliderInputAction(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 172
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSessionVolumeMax()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSessionVolume()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 174
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getEndItemSliceAction()Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    return-object v6
.end method

.method private getMediaDeviceRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 8

    .line 300
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    .line 302
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 303
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 304
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    const/4 v4, 0x0

    .line 305
    invoke-virtual {v3, v2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 307
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-ne v5, v7, :cond_1

    .line 308
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 309
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result p1

    if-ne p1, v6, :cond_0

    .line 311
    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 312
    invoke-static {v1, v2, v4, v0}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 314
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->bluetooth_connect_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    goto :goto_0

    .line 317
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->media_output_disconnected_status:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    .line 318
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const v6, 0x1010038

    .line 320
    invoke-static {p0, v6}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v5, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    .line 323
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v6, 0x21

    .line 319
    invoke-virtual {p1, v5, p0, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 324
    invoke-virtual {v3, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 325
    invoke-static {v1, v2, v4, p1}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 330
    invoke-static {v1, v2, v4, v0}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 332
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result p1

    if-ne p1, v6, :cond_2

    .line 333
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->media_output_switch_error_text:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_2
    :goto_0
    return-object v3
.end method

.method private getMediaDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDevices()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private getPairNewRow()Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 137
    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->bluetooth_pairing_pref_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v3, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    .line 140
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v3, Lcom/android/settings/R$string;->bluetooth_pairing_page_title:I

    .line 141
    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    const/16 v3, 0x679

    .line 142
    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 143
    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 145
    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    .line 146
    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->bluetooth_pairing_pref_title:I

    .line 148
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 144
    invoke-static {v2, v3, v4, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 149
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 150
    invoke-virtual {v2, v0, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 151
    invoke-virtual {v2, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 152
    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-object v2
.end method

.method private getSliderInputAction(ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_device_id"

    .line 243
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 244
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 246
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getTransferringMediaDeviceRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 4

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 288
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->media_output_switching:I

    .line 290
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v2, 0x0

    .line 288
    invoke-static {v1, v0, v2, p0}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 292
    new-instance v1, Landroidx/slice/builders/ListBuilder$RangeBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;-><init>()V

    .line 293
    invoke-virtual {v1, v0, v2}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RangeBuilder;

    const/4 v0, 0x1

    .line 294
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->setMode(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;

    .line 295
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;

    .line 296
    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RangeBuilder;

    return-object v1
.end method

.method private getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method private isVisible()Z
    .locals 1

    .line 401
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    .line 402
    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDevices()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 392
    const-class p0, Lcom/android/settings/media/MediaOutputSliceWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 7

    .line 84
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 85
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "MediaOutputSlice"

    const-string v1, "getSlice() is not visible"

    .line 87
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getMediaDevices()Ljava/util/Collection;

    move-result-object v1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 96
    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getSessionVolumeMax()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->hasAdjustVolumeUserRestriction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getGroupSliderRow()Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getGroupRow()Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 102
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/MediaDevice;

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/media/MediaOutputSlice;->addRow(Lcom/android/settingslib/media/MediaDevice;Lcom/android/settingslib/media/MediaDevice;Landroidx/slice/builders/ListBuilder;)V

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v3

    .line 107
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 109
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/MediaDevice;

    .line 110
    invoke-direct {p0, v2, v2, v0}, Lcom/android/settings/media/MediaOutputSlice;->addRow(Lcom/android/settingslib/media/MediaDevice;Lcom/android/settingslib/media/MediaDevice;Landroidx/slice/builders/ListBuilder;)V

    goto :goto_2

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getPairNewRow()Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_5

    .line 114
    :cond_4
    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getIsTouched()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getTopDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_6

    .line 119
    invoke-direct {p0, v4, v3, v0}, Lcom/android/settings/media/MediaOutputSlice;->addRow(Lcom/android/settingslib/media/MediaDevice;Lcom/android/settingslib/media/MediaDevice;Landroidx/slice/builders/ListBuilder;)V

    .line 120
    invoke-virtual {v2, v4}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->setTopDevice(Lcom/android/settingslib/media/MediaDevice;)V

    .line 123
    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/MediaDevice;

    if-eqz v4, :cond_8

    .line 124
    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 125
    :cond_8
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/media/MediaOutputSlice;->addRow(Lcom/android/settingslib/media/MediaDevice;Lcom/android/settingslib/media/MediaDevice;Landroidx/slice/builders/ListBuilder;)V

    goto :goto_4

    .line 130
    :cond_9
    :goto_5
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 351
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method init(Lcom/android/settings/media/MediaDeviceUpdateWorker;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-void
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 4

    .line 356
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string v0, "media_device_id"

    .line 357
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 358
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "android.app.slice.extra.RANGE_VALUE"

    const/4 v2, -0x1

    .line 362
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "media_group_device"

    .line 363
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->adjustSessionVolume(I)V

    goto :goto_1

    .line 367
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v1

    const-string v3, "MediaOutputSlice"

    if-nez v1, :cond_3

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onNotifyChange: Unable to get device "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-ne p1, v2, :cond_4

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotifyChange: Switch to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->setIsTouched(Z)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_1

    .line 380
    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->adjustVolume(Lcom/android/settingslib/media/MediaDevice;I)V

    :goto_1
    return-void
.end method
