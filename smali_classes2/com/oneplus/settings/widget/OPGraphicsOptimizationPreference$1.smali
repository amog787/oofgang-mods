.class Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;
.super Ljava/lang/Object;
.source "OPGraphicsOptimizationPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 110
    iget-object p2, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    iget-object p2, p2, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    .line 111
    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 112
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->access$002(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;Z)Z

    .line 113
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    invoke-static {p1}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->access$000(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    invoke-static {p1}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->access$100(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    iget-object p1, p1, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;->this$0:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
