.class public Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;
.super Ljava/lang/Object;
.source "StorageSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->storage_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 80
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->STORAGE_SLICE_URI:Landroid/net/Uri;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method getPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 95
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v0, p0}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 96
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 8

    .line 60
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_homepage_storage:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->storage_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->getPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v2

    .line 66
    new-instance v3, Landroidx/slice/builders/ListBuilder;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->STORAGE_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance v4, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 69
    invoke-virtual {v4, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-virtual {v3, v4}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->getStorageUsedText(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->getStorageSummaryText(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 73
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 70
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 74
    invoke-virtual {v3}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method getStorageSummaryText(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->storage_volume_total:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 109
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 108
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getStorageUsedText(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 101
    iget-wide v0, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v0, v2

    .line 102
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/StorageSlice;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->convertUsedBytesToFormattedText(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 55
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->STORAGE_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
