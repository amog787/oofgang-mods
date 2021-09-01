.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2000(I)Z

    move-result p1

    goto :goto_0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 741
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    .line 742
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 744
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result p0

    invoke-virtual {p1, p2, p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 663
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 664
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 666
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 668
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 675
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 677
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 681
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p1

    if-nez p1, :cond_d

    .line 683
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 685
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 686
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 688
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result p2

    if-ne p2, v2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 693
    :cond_5
    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2000(I)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 697
    :cond_6
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 698
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 699
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto/16 :goto_2

    .line 701
    :cond_7
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    move-result p2

    if-eq p2, v3, :cond_d

    .line 702
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 703
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 704
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 705
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto/16 :goto_2

    :cond_8
    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 708
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 709
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2302(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 710
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_2

    :cond_9
    const-string p2, "android.intent.action.HEADSET_PLUG"

    .line 713
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 714
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VOLUME_CHANGED_ACTION mStreamType : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPSeekBarVolumizer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 717
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 718
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result p0

    invoke-virtual {p2, p1, p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    goto :goto_2

    :cond_a
    const-string p2, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    .line 724
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 725
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2602(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;

    .line 726
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p2, p2, 0x20

    const/4 v1, 0x1

    if-eqz p2, :cond_b

    move p2, v1

    goto :goto_0

    :cond_b
    move p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2702(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 728
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_c

    goto :goto_1

    :cond_c
    move v1, v0

    :goto_1
    invoke-static {p1, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 730
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2902(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 734
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    :cond_d
    :goto_2
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 643
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 644
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    .line 646
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 647
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 650
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 652
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    .line 653
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 654
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 657
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method
