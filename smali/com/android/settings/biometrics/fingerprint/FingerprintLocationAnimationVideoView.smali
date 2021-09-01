.class public Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;
.super Landroid/view/TextureView;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;


# instance fields
.field protected mAspect:F

.field protected mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 41
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/view/TextureView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected static resourceEntryToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 3

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method createMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 0

    .line 124
    iget-object p0, p0, Landroid/view/TextureView;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method protected getFingerprintLocationAnimation()Landroid/net/Uri;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$raw;->fingerprint_location_animation:I

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->resourceEntryToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/view/TextureView;->onFinishInflate()V

    .line 63
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 52
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 53
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
