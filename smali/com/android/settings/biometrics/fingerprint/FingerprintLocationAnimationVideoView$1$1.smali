.class Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p0, 0x1

    .line 87
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
