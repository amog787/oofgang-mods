.class Lcom/android/settings/widget/MediaAnimationController;
.super Ljava/lang/Object;
.source "MediaAnimationController.java"

# interfaces
.implements Lcom/android/settings/widget/VideoPreference$AnimationController;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSurface:Landroid/view/Surface;

.field private mVideoReady:Z


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$xif5b9FVp6MF0NgttTyEa9Fkq-s;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$xif5b9FVp6MF0NgttTyEa9Fkq-s;-><init>(Lcom/android/settings/widget/MediaAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 49
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object p1, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$60QwoqjGmisNwYSwY_DAxBhw-I8;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$60QwoqjGmisNwYSwY_DAxBhw-I8;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MediaAnimationController;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MediaAnimationController;->setSurface(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MediaAnimationController;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/MediaAnimationController;)Landroid/media/MediaPlayer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private synthetic lambda$attachView$2(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MediaAnimationController;->updateViewStates(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/widget/MediaAnimationController;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    .line 153
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private updateViewStates(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    const/4 p0, 0x0

    .line 141
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method public attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-direct {p0, p2, p3}, Lcom/android/settings/widget/MediaAnimationController;->updateViewStates(Landroid/view/View;Landroid/view/View;)V

    .line 86
    new-instance v0, Lcom/android/settings/widget/MediaAnimationController$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/settings/widget/MediaAnimationController$1;-><init>(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 124
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/settings/widget/-$$Lambda$MediaAnimationController$4H8SVtsELnxw3RvZIDvVYXTWt6M;-><init>(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getDuration()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$attachView$2$MediaAnimationController(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/MediaAnimationController;->lambda$attachView$2(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$0$MediaAnimationController(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/MediaAnimationController;->lambda$new$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/widget/MediaAnimationController;->mVideoReady:Z

    :cond_0
    return-void
.end method
