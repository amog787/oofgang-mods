.class public final synthetic Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

.field public final synthetic f$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;->f$0:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;->f$1:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;->f$0:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;->f$1:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->lambda$doInBackground$0$QrCamera$DecodingTask(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V

    return-void
.end method
