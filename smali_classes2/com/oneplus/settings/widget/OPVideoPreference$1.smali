.class Lcom/oneplus/settings/widget/OPVideoPreference$1;
.super Ljava/lang/Object;
.source "OPVideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/widget/OPVideoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/widget/OPVideoPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 117
    iget-object p2, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object p2, p2, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    .line 118
    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 119
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$002(Lcom/oneplus/settings/widget/OPVideoPreference;Z)Z

    .line 120
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {p0}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {p1}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$000(Lcom/oneplus/settings/widget/OPVideoPreference;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {p1}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {p1}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {p1}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$200(Lcom/oneplus/settings/widget/OPVideoPreference;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object p1, p1, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 142
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method
