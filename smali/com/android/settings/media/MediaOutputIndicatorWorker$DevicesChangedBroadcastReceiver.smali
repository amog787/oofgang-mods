.class Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaOutputIndicatorWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/media/MediaOutputIndicatorWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicesChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method private constructor <init>(Lcom/android/settings/media/MediaOutputIndicatorWorker;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;->this$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/media/MediaOutputIndicatorWorker;Lcom/android/settings/media/MediaOutputIndicatorWorker$1;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;-><init>(Lcom/android/settings/media/MediaOutputIndicatorWorker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 187
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;->this$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    invoke-static {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->access$100(Lcom/android/settings/media/MediaOutputIndicatorWorker;)V

    :cond_0
    return-void
.end method
