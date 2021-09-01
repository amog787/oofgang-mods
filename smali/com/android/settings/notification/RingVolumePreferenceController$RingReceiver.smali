.class Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/notification/RingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 194
    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$600(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$600(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$400(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$500(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->mRegistered:Z

    return-void
.end method
