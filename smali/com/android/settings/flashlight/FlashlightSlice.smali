.class public Lcom/android/settings/flashlight/FlashlightSlice;
.super Ljava/lang/Object;
.source "FlashlightSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getCameraId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 121
    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 122
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 123
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 124
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 125
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 126
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static isFlashlightAvailable(Landroid/content/Context;)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/flashlight/FlashlightSlice;->getCameraId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FlashlightSlice"

    const-string v4, "Error getting camera id."

    .line 144
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v2, v0

    .line 146
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "flashlight_available"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private static isFlashlightEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flashlight_enabled"

    const/4 v1, 0x0

    .line 151
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 96
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.android.settings.flashlight.action.FLASHLIGHT_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 9

    .line 70
    iget-object v0, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/flashlight/FlashlightSlice;->isFlashlightAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$drawable;->ic_signal_flashlight:I

    .line 76
    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    .line 77
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 79
    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->power_flashlight:I

    .line 81
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    const/4 v5, 0x0

    .line 82
    invoke-virtual {v2, v3, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object p0, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {p0}, Lcom/android/settings/flashlight/FlashlightSlice;->isFlashlightEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 84
    invoke-static {v0, v1, p0}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 83
    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 80
    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 86
    invoke-virtual {v4}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 91
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/flashlight/FlashlightSlice;->getCameraId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 104
    iget-object v2, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {v2}, Lcom/android/settings/flashlight/FlashlightSlice;->isFlashlightEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 106
    iget-object v1, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 107
    invoke-virtual {v1, v0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FlashlightSlice"

    const-string v1, "Camera couldn\'t set torch mode."

    .line 110
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/settings/flashlight/FlashlightSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/slices/CustomSliceRegistry;->FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
