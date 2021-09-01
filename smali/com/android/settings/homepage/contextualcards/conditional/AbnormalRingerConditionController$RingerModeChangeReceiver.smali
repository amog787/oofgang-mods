.class Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbnormalRingerConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RingerModeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver$1;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/AbnormalRingerConditionController$RingerModeChangeReceiver;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
