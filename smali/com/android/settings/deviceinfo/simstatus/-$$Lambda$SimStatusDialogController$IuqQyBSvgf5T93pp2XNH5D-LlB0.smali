.class public final synthetic Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$IuqQyBSvgf5T93pp2XNH5D-LlB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$IuqQyBSvgf5T93pp2XNH5D-LlB0;->f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$IuqQyBSvgf5T93pp2XNH5D-LlB0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$IuqQyBSvgf5T93pp2XNH5D-LlB0;->f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/-$$Lambda$SimStatusDialogController$IuqQyBSvgf5T93pp2XNH5D-LlB0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->lambda$requestForUpdateEid$0$SimStatusDialogController(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
