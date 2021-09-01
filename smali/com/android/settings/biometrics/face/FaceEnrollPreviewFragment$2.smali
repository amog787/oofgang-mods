.class Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;
.super Ljava/lang/Object;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p0, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p0, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$200(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
