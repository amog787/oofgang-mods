.class Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;
.super Landroid/os/AsyncTask;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/qrcode/QrCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/settings/wifi/qrcode/QrCamera;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;Lcom/android/settings/wifi/qrcode/QrCamera$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)Z
    .locals 7

    .line 293
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 294
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    const-string v5, "QrCamera"

    if-ge v3, v0, :cond_1

    .line 297
    :try_start_0
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 298
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_0

    .line 299
    iget-object v6, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v6}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)V

    .line 300
    iget-object v6, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v6, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    .line 301
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v3, v6}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget-object v3, v3, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_2

    if-lez v0, :cond_2

    const-string v0, "Can\'t find back camera. Opening a different camera"

    .line 306
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v0, v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget-object v0, v0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget-object v0, v0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 324
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->setCameraParameter()V

    .line 325
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$500(Lcom/android/settings/wifi/qrcode/QrCamera;)V

    .line 326
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$600(Lcom/android/settings/wifi/qrcode/QrCamera;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 327
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Lost contex"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot find available camera"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to startPreview camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iput-object v4, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    .line 332
    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    return v2

    :catch_1
    move-exception p1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to open camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iput-object v4, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    .line 315
    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    return v2
.end method

.method private synthetic lambda$doInBackground$0(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V
    .locals 0

    .line 255
    iget-object p3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p3, p2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$700(Lcom/android/settings/wifi/qrcode/QrCamera;[B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    .line 256
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    .line 245
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->initCamera(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 249
    :cond_0
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget-object v1, v1, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 261
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    .line 265
    invoke-static {v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    iget-object v4, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 272
    throw p1

    .line 271
    :catch_0
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 279
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-object v0
.end method

.method public synthetic lambda$doInBackground$0$QrCamera$DecodingTask(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->lambda$doInBackground$0(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 288
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
