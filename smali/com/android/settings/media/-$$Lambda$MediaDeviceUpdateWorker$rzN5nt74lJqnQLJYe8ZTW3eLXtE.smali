.class public final synthetic Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$rzN5nt74lJqnQLJYe8ZTW3eLXtE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/media/MediaDevice;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$rzN5nt74lJqnQLJYe8ZTW3eLXtE;->f$0:Lcom/android/settingslib/media/MediaDevice;

    iput p2, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$rzN5nt74lJqnQLJYe8ZTW3eLXtE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$rzN5nt74lJqnQLJYe8ZTW3eLXtE;->f$0:Lcom/android/settingslib/media/MediaDevice;

    iget p0, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$rzN5nt74lJqnQLJYe8ZTW3eLXtE;->f$1:I

    invoke-static {v0, p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->lambda$adjustVolume$2(Lcom/android/settingslib/media/MediaDevice;I)V

    return-void
.end method
