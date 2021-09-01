.class Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;
.super Ljava/lang/Object;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/history/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalNotificationInfo"
.end annotation


# instance fields
.field public active:Z

.field public alerted:Z

.field public badged:Z

.field public channel:Landroid/app/NotificationChannel;

.field public channelId:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public key:Ljava/lang/String;

.field public notificationExtra:Ljava/lang/CharSequence;

.field public pkg:Ljava/lang/String;

.field public pkgname:Ljava/lang/CharSequence;

.field public priority:I

.field public rankingExtra:Ljava/lang/CharSequence;

.field public text:Ljava/lang/CharSequence;

.field public timestamp:J

.field public title:Ljava/lang/CharSequence;

.field public user:I

.field public visuallyInterruptive:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationStation$1;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public updateFrom(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V
    .locals 2

    .line 102
    iget-object v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->channel:Landroid/app/NotificationChannel;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->channel:Landroid/app/NotificationChannel;

    .line 103
    iget-object v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->text:Ljava/lang/CharSequence;

    .line 106
    iget v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->priority:I

    iput v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 107
    iget-wide v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iput-wide v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 108
    iget-boolean v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 109
    iget-boolean v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->alerted:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->alerted:Z

    .line 110
    iget-boolean v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->visuallyInterruptive:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->visuallyInterruptive:Z

    .line 111
    iget-object v0, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->notificationExtra:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->notificationExtra:Ljava/lang/CharSequence;

    .line 112
    iget-object p1, p1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->rankingExtra:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->rankingExtra:Ljava/lang/CharSequence;

    return-void
.end method
