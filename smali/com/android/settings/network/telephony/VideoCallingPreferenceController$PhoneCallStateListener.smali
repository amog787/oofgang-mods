.class Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "VideoCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 169
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 176
    iget-object p2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    .line 177
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->access$000(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    .line 181
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 p2, 0x20

    invoke-virtual {p1, p0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    .line 190
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
