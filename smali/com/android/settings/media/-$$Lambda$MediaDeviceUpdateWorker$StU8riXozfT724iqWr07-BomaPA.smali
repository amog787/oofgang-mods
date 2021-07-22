.class public final synthetic Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$StU8riXozfT724iqWr07-BomaPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

.field public final synthetic f$1:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$StU8riXozfT724iqWr07-BomaPA;->f$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object p2, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$StU8riXozfT724iqWr07-BomaPA;->f$1:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$StU8riXozfT724iqWr07-BomaPA;->f$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iget-object p0, p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$StU8riXozfT724iqWr07-BomaPA;->f$1:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->lambda$connectDevice$1$MediaDeviceUpdateWorker(Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method
