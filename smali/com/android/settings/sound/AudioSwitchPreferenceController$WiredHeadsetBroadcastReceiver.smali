.class Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/AudioSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.HEADSET_PLUG"

    .line 304
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 305
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
