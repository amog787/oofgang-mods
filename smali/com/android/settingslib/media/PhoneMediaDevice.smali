.class public Lcom/android/settingslib/media/PhoneMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "PhoneMediaDevice.java"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V

    const-string p2, "audio"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    return-void
.end method


# virtual methods
.method getDrawableResId()I
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 124
    sget p0, Lcom/android/settingslib/R$drawable;->ic_smartphone:I

    goto :goto_0

    .line 120
    :cond_0
    :pswitch_0
    sget p0, Lcom/android/settingslib/R$drawable;->ic_headphone:I

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/MediaDevice;->setColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->buildAdvancedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIconWithoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getDrawableResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "phone_media_device_id"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string/jumbo p0, "usb_headset_media_device_id"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "wired_headset_media_device_id"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v0, 0x10402b2

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->media_transfer_this_device_name:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 78
    :cond_1
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    .line 74
    :cond_2
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->media_transfer_wired_usb_device_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
