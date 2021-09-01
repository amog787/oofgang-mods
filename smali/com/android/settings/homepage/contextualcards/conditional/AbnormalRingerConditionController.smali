.class public abstract Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;
.super Ljava/lang/Object;
.source "AbnormalRingerConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;
    }
.end annotation


# static fields
.field private static final FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field protected final mAudioManager:Landroid/media/AudioManager;

.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field private final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAppContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    const-string p2, "audio"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    return-object p0
.end method


# virtual methods
.method public onActionClick()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 56
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 1

    .line 47
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x30000000

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
