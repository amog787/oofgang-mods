.class public Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreference;
.super Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;
.source "BluetoothQualityDialogPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_quality_default:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_quality_optimized_quality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_quality_optimized_connection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_quality_best_effort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_ldac_playback_quality_titles:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 69
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->bluetooth_a2dp_codec_ldac_playback_quality_summaries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 74
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected getDefaultIndex()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected getRadioButtonGroupId()I
    .locals 0

    .line 54
    sget p0, Lcom/android/settings/R$id;->bluetooth_audio_quality_radio_group:I

    return p0
.end method
