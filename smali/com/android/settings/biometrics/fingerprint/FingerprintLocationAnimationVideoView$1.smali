.class Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTextureToDestroy:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 69
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 70
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->getFingerprintLocationAnimation()Landroid/net/Uri;

    move-result-object p2

    .line 71
    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object p3, p3, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->release()V

    .line 74
    :cond_0
    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    if-eqz p3, :cond_1

    .line 75
    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 p3, 0x0

    .line 76
    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    .line 78
    :cond_1
    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-static {p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->createMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p2

    iput-object p2, p3, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object p2, p2, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p2, :cond_2

    return-void

    .line 83
    :cond_2
    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$2;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object p2, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object p3, p3, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    .line 101
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    .line 102
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;->startAnimation()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
