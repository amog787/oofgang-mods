.class public Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.super Ljava/lang/Object;
.source "OPSeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAffectedByRingerMode:Z

.field private mAllowAlarms:Z

.field private mAllowMedia:Z

.field private mAllowRinger:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentStreamType:I

.field private final mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastAudibleStreamVolume:I

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationOrRing:Z

.field private mNotificationPolicy:Landroid/app/NotificationManager$Policy;

.field private mOriginalStreamVolume:I

.field private mPlaySample:Z

.field private final mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private final mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

.field private final mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

.field private mVolumeGroupId:I

.field private final mVolumeHandler:Landroid/os/Handler;

.field private mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

.field private mZenMode:I

.field private volumeAdjusting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 150
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;Z)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    .line 97
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    .line 108
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    .line 159
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 160
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 161
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 162
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 163
    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAllowAlarms:Z

    .line 165
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAllowMedia:Z

    .line 171
    iput p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    .line 172
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAffectedByRingerMode:Z

    .line 173
    iget p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    .line 179
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    iget p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeGroupId:I

    .line 181
    iget p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    .line 185
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMaxStreamVolume:I

    .line 186
    iput-object p4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    .line 187
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    .line 188
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 189
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    .line 190
    iput-boolean p5, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mPlaySample:Z

    .line 191
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    if-eqz p2, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result p4

    invoke-interface {p2, p1, p4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onMuted(ZZ)V

    :cond_4
    if-nez p3, :cond_7

    .line 195
    iget p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 196
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_5
    const/4 p2, 0x5

    if-ne p1, p2, :cond_6

    .line 198
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_2

    .line 200
    :cond_6
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 203
    :cond_7
    :goto_2
    iput-object p3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAffectedByRingerMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(I)Z
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeGroupId:I

    return p0
.end method

.method static synthetic access$2302(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    return p1
.end method

.method static synthetic access$2400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAllowAlarms:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAllowMedia:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAllowRinger:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->volumeAdjusting:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$702(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    return p0
.end method

.method static synthetic access$902(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    return p1
.end method

.method private getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .locals 1

    .line 229
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 230
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 235
    :cond_1
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 237
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method private getVolumeGroupIdForLegacyStreamType(I)I
    .locals 2

    .line 212
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 213
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 219
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/oneplus/settings/notification/-$$Lambda$OPSeekBarVolumizer$BaHlv-Y9YWvugHrdWUFgxL5eDgo;->INSTANCE:Lcom/oneplus/settings/notification/-$$Lambda$OPSeekBarVolumizer$BaHlv-Y9YWvugHrdWUFgxL5eDgo;

    .line 220
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/oneplus/settings/notification/-$$Lambda$OPSeekBarVolumizer$uYYnp9GRgGkdFxwtIEYpjFWJJ3U;->INSTANCE:Lcom/oneplus/settings/notification/-$$Lambda$OPSeekBarVolumizer$uYYnp9GRgGkdFxwtIEYpjFWJJ3U;

    .line 222
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 223
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private hasAudioProductStrategies()Z
    .locals 0

    .line 207
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAlarmsStream(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMediaStream(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isZenMuted()Z
    .locals 3

    .line 283
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method static synthetic lambda$getVolumeGroupIdForLegacyStreamType$0(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/lang/Integer;
    .locals 1

    .line 220
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getVolumeGroupIdForLegacyStreamType$1(Ljava/lang/Integer;)Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onInitSample()V
    .locals 2

    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 392
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 394
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onStartSample()V
    .locals 4

    .line 405
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0, p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 410
    :cond_0
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 413
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 414
    invoke-virtual {v2}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v2, 0x80

    .line 415
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 417
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "OPSeekBarVolumizer"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private onStopSample()V
    .locals 1

    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 439
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postSetVolume(I)V
    .locals 2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postSetVolume progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSeekBarVolumizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 510
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    const/4 p1, 0x0

    .line 511
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    .line 515
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->volumeAdjusting:Z

    return-void
.end method

.method private postStartSample()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 401
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isSamplePlaying()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 400
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private postStopSample()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 429
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private registerVolumeGroupCb()V
    .locals 3

    .line 750
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/oneplus/settings/notification/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/oneplus/settings/notification/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerVolumeGroupCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$VolumeGroupCallback;)V

    .line 752
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V

    :cond_0
    return-void
.end method

.method private unregisterVolumeGroupCb()V
    .locals 2

    .line 757
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterVolumeGroupCallback(Landroid/media/AudioManager$VolumeGroupCallback;)V

    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->volumeAdjusting:Z

    if-nez v1, :cond_0

    .line 620
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 622
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 623
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getThreeKeyStatus(Landroid/content/Context;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "OPSeekBarVolumizer"

    const-string v0, "getThreeKeyStatus error, context is null"

    .line 295
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 299
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "three_Key_mode"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "OPSeekBarVolumizer"

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid SeekBarVolumizer message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mPlaySample:Z

    if-eqz p1, :cond_7

    .line 379
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->onInitSample()V

    goto/16 :goto_1

    .line 373
    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mPlaySample:Z

    if-eqz p1, :cond_7

    .line 374
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->onStopSample()V

    goto/16 :goto_1

    .line 368
    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mPlaySample:Z

    if-eqz p1, :cond_7

    .line 369
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->onStartSample()V

    goto/16 :goto_1

    .line 349
    :cond_3
    iget p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCurrentStreamType:I

    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 353
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_SET_STREAM_VOLUME mMuted = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLastProgress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    iget v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    const/16 v5, 0x400

    invoke-virtual {p1, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p1, 0x0

    .line 358
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->volumeAdjusting:Z

    .line 360
    iget-boolean v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    if-lez v3, :cond_5

    .line 361
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 362
    :cond_5
    iget-boolean v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    if-nez v3, :cond_6

    .line 363
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    const/16 v5, -0x64

    invoke-virtual {v3, v4, v5, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 365
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SET_STREAM_VOLUME setStreamVolume mStreamType : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return v1
.end method

.method isRestrictionEnforcedByAdmin(Landroid/content/Context;)Z
    .locals 1

    .line 764
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    const-string v0, "no_adjust_volume"

    .line 763
    invoke-static {p1, v0, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .line 534
    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 536
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isZenModeEnabled(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 485
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 488
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v1

    if-nez v1, :cond_0

    move p2, v0

    .line 492
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 501
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    if-eqz p0, :cond_2

    .line 502
    invoke-interface {p0, p1, p2, p3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 521
    iget p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCurrentStreamType:I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "OPSeekBarVolumizer"

    const-string v1, "onStopTrackingTouch"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postSetVolume(I)V

    .line 529
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStartSample()V

    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 257
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 258
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 259
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSeekBar()V

    .line 260
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OPSeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 461
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 462
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    .line 464
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    .line 465
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    const/4 v3, 0x0

    .line 464
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 468
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_Key_mode"

    .line 469
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    .line 468
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 472
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->setListening(Z)V

    .line 473
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->registerVolumeGroupCb()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStopSample()V

    .line 446
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 447
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->setListening(Z)V

    .line 448
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->unregisterVolumeGroupCb()V

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 452
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 453
    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 454
    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    return-void
.end method

.method public stopSample()V
    .locals 0

    .line 544
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStopSample()V

    return-void
.end method

.method protected updateSeekBar()V
    .locals 4

    .line 307
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result v0

    .line 309
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 312
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isAlarmsStream(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 313
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAllowAlarms:Z

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 320
    :cond_2
    :goto_0
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isMediaStream(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAllowMedia:Z

    if-nez v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 327
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isRestrictionEnforcedByAdmin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 335
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I

    if-ne v0, v2, :cond_6

    .line 336
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_3

    .line 337
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_7

    .line 338
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_3

    .line 340
    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_8

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :goto_3
    return-void
.end method
