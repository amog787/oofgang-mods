.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "OPRingtoneBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 383
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "RingtoneBaseActivity"

    const-string p2, "PhoneCallListener-CALL_STATE_RINGING--stopAnyPlayingRingtone"

    .line 388
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    :goto_0
    return-void
.end method
