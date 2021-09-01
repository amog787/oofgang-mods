.class public Lcom/oneplus/settings/widget/OPVideoPreference;
.super Landroidx/preference/Preference;
.source "OPVideoPreference.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

.field mAnimationAvailable:Z

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    .line 62
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    :try_start_0
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_animation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 69
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android.resource"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 71
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 76
    sget v0, Lcom/android/settings/R$layout;->op_video_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 78
    sget v0, Lcom/android/settings/R$styleable;->VideoPreference_preview:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$ynCil1Vg3ClpXktrurvZlqx29d4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$ynCil1Vg3ClpXktrurvZlqx29d4;-><init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$uc3qMTOa2JodIJYV5EhB8pjdWdg;->INSTANCE:Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$uc3qMTOa2JodIJYV5EhB8pjdWdg;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 84
    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAnimationAvailable:Z

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPVideoPreference;->updateAspectRatio()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "OPVideoPreference"

    const-string p1, "Animation resource not found. Will not show animation."

    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    throw p0
.end method

.method static synthetic access$000(Lcom/oneplus/settings/widget/OPVideoPreference;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/widget/OPVideoPreference;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/widget/OPVideoPreference;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OPVideoPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPVideoPreference;->lambda$new$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 100
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    sget v0, Lcom/android/settings/R$id;->video_texture_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 105
    sget v1, Lcom/android/settings/R$id;->video_preview_image:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    .line 106
    sget v1, Lcom/android/settings/R$id;->video_container:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 109
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 111
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 113
    new-instance p1, Lcom/oneplus/settings/widget/OPVideoPreference$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/widget/OPVideoPreference$1;-><init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setVideoPaused()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    if-eqz v1, :cond_0

    .line 191
    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setVideoResume()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    return-void
.end method
