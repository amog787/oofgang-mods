.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;
.super Landroid/os/Handler;
.source "OPRingtoneBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 73
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 74
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "RingtoneBaseActivity"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "OPRingtoneBaseActivity play ringtone delay"

    .line 87
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Landroid/media/Ringtone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Ringtone;->stop()V

    .line 90
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Landroid/media/Ringtone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Landroid/media/Ringtone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x3e8

    .line 78
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 80
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopVibrate()V

    const-string p0, "Ringtone play stoped, stop vibrate"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
