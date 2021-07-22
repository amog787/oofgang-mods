.class Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaDeviceUpdateWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/media/MediaDeviceUpdateWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicesChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method private constructor <init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;->this$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settings/media/MediaDeviceUpdateWorker$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;-><init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 254
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;->this$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iget-object p1, p1, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;->this$0:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    invoke-static {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->access$100(Lcom/android/settings/media/MediaDeviceUpdateWorker;)V

    :cond_0
    return-void
.end method
