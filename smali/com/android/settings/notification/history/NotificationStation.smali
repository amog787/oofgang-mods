.class public Lcom/android/settings/notification/history/NotificationStation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;,
        Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private mNotificationInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/android/settings/notification/history/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/history/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 121
    new-instance v0, Lcom/android/settings/notification/history/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationStation$1;-><init>(Lcom/android/settings/notification/history/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 163
    sget-object v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;->INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$vzYu5NURW2nou6A2liBHAUKnTXE;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lcom/android/settings/notification/history/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/history/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationStation;->addOrUpdateNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationStation;->markNotificationAsDismissed(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/history/NotificationStation;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationStation;->updateNotificationsFromRanking()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/notification/history/NotificationStation;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationStation;->populateNotifications()V

    return-void
.end method

.method private addOrUpdateNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    const/4 v0, 0x1

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/history/NotificationStation;->createFromSbn(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 261
    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    .line 262
    iget-object v6, v5, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->alerted:Z

    if-nez v6, :cond_0

    iget-boolean v6, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->visuallyInterruptive:Z

    if-nez v6, :cond_0

    .line 264
    invoke-virtual {v5, v1}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->updateFrom(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    .line 266
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    .line 267
    invoke-virtual {p1, v5}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;->updatePreference(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 273
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    .line 276
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;I)V

    .line 274
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private static bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 304
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 305
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private createFromSbn(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;
    .locals 5

    .line 406
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings/notification/history/NotificationStation$1;)V

    .line 408
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 411
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eq v2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->badged:Z

    .line 412
    invoke-direct {p0, v1, p1}, Lcom/android/settings/notification/history/NotificationStation;->loadIcon(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 414
    iget-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v3, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->user:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/notification/history/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 416
    :cond_2
    iget-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/notification/history/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 417
    invoke-static {v0}, Lcom/android/settings/notification/history/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 418
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/notification/history/NotificationStation;->getTextString(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->text:Ljava/lang/CharSequence;

    .line 419
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 420
    iget v0, v0, Landroid/app/Notification;->priority:I

    iput v0, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 421
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->channelId:Ljava/lang/String;

    .line 424
    iput-boolean p2, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 425
    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/history/NotificationStation;->generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->notificationExtra:Ljava/lang/CharSequence;

    .line 427
    invoke-direct {p0, v1}, Lcom/android/settings/notification/history/NotificationStation;->updateFromRanking(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    return-object v1
.end method

.method private static formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    const-string v1, "Intent(pkg="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " (activity)"

    .line 363
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string p0, ")"

    .line 365
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateExtraText(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;
    .locals 10

    .line 511
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 512
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 513
    sget v2, Lcom/android/settings/R$string;->notification_log_details_delimiter:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    sget v3, Lcom/android/settings/R$string;->notification_log_details_package:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 515
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object p2, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 516
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const-string v3, "\n"

    .line 517
    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget v4, Lcom/android/settings/R$string;->notification_log_details_key:I

    .line 518
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 519
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 520
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 521
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget v4, Lcom/android/settings/R$string;->notification_log_details_icon:I

    .line 522
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 523
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 524
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 525
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const-string v4, "postTime"

    .line 526
    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 527
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 528
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 529
    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-eqz p2, :cond_0

    .line 530
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const-string v4, "timeoutAfter"

    .line 531
    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 532
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 533
    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 536
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget v4, Lcom/android/settings/R$string;->notification_log_details_group:I

    .line 537
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 538
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 539
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 540
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 541
    sget p1, Lcom/android/settings/R$string;->notification_log_details_group_summary:I

    .line 542
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-static {p1}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 545
    :cond_1
    iget-object p1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz p1, :cond_2

    .line 546
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->notification_log_details_public_version:I

    .line 547
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 549
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 550
    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 553
    :cond_2
    iget-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    .line 554
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->notification_log_details_content_intent:I

    .line 555
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 557
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 558
    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 560
    :cond_3
    iget-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_4

    .line 561
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->notification_log_details_delete_intent:I

    .line 562
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 564
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 565
    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 567
    :cond_4
    iget-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_5

    .line 568
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->notification_log_details_full_screen_intent:I

    .line 569
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 571
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 572
    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 574
    :cond_5
    iget-object p1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/16 p2, 0x20

    const-string v4, "\n  "

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    array-length p1, p1

    if-lez p1, :cond_8

    .line 575
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v6, Lcom/android/settings/R$string;->notification_log_details_actions:I

    .line 576
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move p1, v5

    .line 577
    :goto_0
    iget-object v6, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v6

    if-ge p1, v7, :cond_8

    .line 578
    aget-object v6, v6, p1

    .line 579
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/R$string;->notification_log_details_title:I

    .line 580
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 582
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 583
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 584
    iget-object v7, v6, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v8, "\n    "

    if-eqz v7, :cond_6

    .line 585
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget v9, Lcom/android/settings/R$string;->notification_log_details_content_intent:I

    .line 586
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 588
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    iget-object v9, v6, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 589
    invoke-static {v9}, Lcom/android/settings/notification/history/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 591
    :cond_6
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 592
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/R$string;->notification_log_details_remoteinput:I

    .line 593
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 595
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 596
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 600
    :cond_8
    iget-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_9

    .line 601
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v6, Lcom/android/settings/R$string;->notification_log_details_content_view:I

    .line 602
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 604
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 605
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 607
    :cond_9
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 608
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v6, "bubbleMetadata"

    .line 609
    invoke-static {v6}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 610
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 611
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 613
    :cond_a
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 614
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v6, "shortcutId"

    .line 615
    invoke-static {v6}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 616
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 617
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 621
    :cond_b
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 622
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v6, Lcom/android/settings/R$string;->notification_log_details_extras:I

    .line 623
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 625
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 626
    iget-object v7, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 627
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 628
    :cond_c
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 633
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 634
    invoke-virtual {v0, p1, v5}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 635
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v4, Lcom/android/settings/R$string;->notification_log_details_parcel:I

    .line 636
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 637
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 639
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->notification_log_details_ashmem:I

    .line 640
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 641
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->getBlobAshmemSize()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 643
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1
.end method

.method private generateRankingExtraText(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;
    .locals 8

    .line 448
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 449
    sget v1, Lcom/android/settings/R$string;->notification_log_details_delimiter:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    new-instance v2, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 452
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    const-string v4, "\n"

    if-eqz v3, :cond_4

    iget-object v5, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    iget-boolean v3, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->alerted:Z

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget v5, Lcom/android/settings/R$string;->notification_log_details_alerted:I

    .line 455
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 457
    :cond_0
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget v5, Lcom/android/settings/R$string;->notification_log_channel:I

    .line 458
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 459
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->channel:Landroid/app/NotificationChannel;

    .line 460
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 461
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v5, "getShortcutInfo"

    .line 462
    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 463
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 464
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 465
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v5, "isConversation"

    .line 466
    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 467
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 468
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result v5

    const-string v6, "true"

    const-string v7, "false"

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 469
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v5, "isBubble"

    .line 470
    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 471
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 472
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->isBubble()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 473
    iget-boolean p1, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz p1, :cond_6

    .line 474
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v3, Lcom/android/settings/R$string;->notification_log_details_importance:I

    .line 475
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 477
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 478
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v3

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 479
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 480
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v3, Lcom/android/settings/R$string;->notification_log_details_explanation:I

    .line 481
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 483
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 484
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 486
    :cond_3
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v3, Lcom/android/settings/R$string;->notification_log_details_badge:I

    .line 487
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 489
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 490
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 493
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez p1, :cond_5

    .line 494
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->notification_log_details_ranking_null:I

    .line 495
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 498
    :cond_5
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->notification_log_details_ranking_none:I

    .line 499
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    :goto_2
    return-object v0
.end method

.method private static getTextString(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .locals 4

    .line 323
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "android.text"

    .line 324
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 326
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$BigTextStyle;

    if-eqz v3, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$MessagingStyle;

    if-eqz v3, :cond_1

    .line 331
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle;

    .line 332
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 333
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 334
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 338
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 339
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 342
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method private static getTitleString(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 312
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "android.title"

    .line 313
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 315
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)I
    .locals 2

    .line 164
    iget-wide v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-wide p0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private loadIcon(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 346
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {p2, p0}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 346
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 352
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->color:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private loadNotifications()V
    .locals 15

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    .line 378
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    const/4 v5, 0x0

    .line 377
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/INotificationManager;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x2

    new-array v4, v3, [[Landroid/service/notification/StatusBarNotification;

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_3

    .line 384
    aget-object v7, v4, v1

    .line 385
    array-length v8, v7

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 386
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_3

    :cond_0
    if-ne v7, v0, :cond_1

    move v11, v6

    goto :goto_2

    :cond_1
    move v11, v5

    .line 389
    :goto_2
    invoke-direct {p0, v10, v11}, Lcom/android/settings/notification/history/NotificationStation;->createFromSbn(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    move-result-object v10

    const-string v11, "   [%d] %s: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    .line 390
    iget-wide v13, v10, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v5

    iget-object v13, v10, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    aput-object v13, v12, v6

    iget-object v13, v10, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    aput-object v13, v12, v3

    invoke-static {v11, v12}, Lcom/android/settings/notification/history/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 398
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 401
    sget-object v0, Lcom/android/settings/notification/history/NotificationStation;->TAG:Ljava/lang/String;

    const-string v1, "Cannot load Notifications: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 651
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 653
    sget-object p1, Lcom/android/settings/notification/history/NotificationStation;->TAG:Ljava/lang/String;

    const-string p2, "Cannot get application icon"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 665
    sget-object v0, Lcom/android/settings/notification/history/NotificationStation;->TAG:Ljava/lang/String;

    const-string v1, "Cannot load package name"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private markNotificationAsDismissed(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 242
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    .line 243
    iget-object v4, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    iput-boolean v1, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 245
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    .line 246
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    .line 246
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;->updatePreference(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private populateNotifications()V
    .locals 6

    .line 223
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationStation;->loadNotifications()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "adding %d infos"

    invoke-static {v2, v1}, Lcom/android/settings/notification/history/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :goto_0
    if-ge v3, v0, :cond_1

    .line 231
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v2, v4, v5, v3}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;I)V

    .line 231
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFromRanking(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V
    .locals 5

    .line 433
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez v1, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v2, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 438
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->alerted:Z

    .line 439
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->visuallyInterruptive()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->visuallyInterruptive:Z

    .line 440
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->channel:Landroid/app/NotificationChannel;

    .line 441
    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationStation;->generateRankingExtraText(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->rankingExtra:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateNotificationsFromRanking()V
    .locals 5

    .line 284
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    const/4 v1, 0x0

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 287
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    .line 288
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    .line 289
    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 291
    invoke-direct {p0, v3}, Lcom/android/settings/notification/history/NotificationStation;->updateFromRanking(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    .line 292
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    .line 293
    invoke-virtual {v2, v3}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;->updatePreference(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4b

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "onActivityCreated(%s)"

    .line 200
    invoke-static {v2, v0}, Lcom/android/settings/notification/history/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 204
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onAttach(%s)"

    invoke-static {v1, v0}, Lcom/android/settings/notification/history/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 170
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const-string p1, "notification"

    .line 173
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 172
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 174
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDetach()"

    .line 179
    invoke-static {v1, v0}, Lcom/android/settings/notification/history/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/android/settings/notification/history/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onResume()"

    .line 209
    invoke-static {v1, v0}, Lcom/android/settings/notification/history/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .line 212
    invoke-virtual {v0, v1, v2, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
    sget-object v0, Lcom/android/settings/notification/history/NotificationStation;->TAG:Ljava/lang/String;

    const-string v1, "Cannot register listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
