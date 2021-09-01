.class public Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreference;
.super Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;
.source "BluetoothCodecDialogPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_default:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_sbc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_aac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_aptx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_aptx_hd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_aptx_adaptive:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_ldac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_aptx_twsp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a2dp_codec_titles array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtCodecDlgPref"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v3, v1

    .line 74
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_summaries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a2dp_codec_summaries array length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected getRadioButtonGroupId()I
    .locals 0

    .line 58
    sget p0, Lcom/android/settings/R$id;->bluetooth_audio_codec_radio_group:I

    return p0
.end method
