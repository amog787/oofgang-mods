.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$HistoricalNotificationPreference$2sWvM4d0R0PoIhg2p-lnpOXoVWY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$HistoricalNotificationPreference$2sWvM4d0R0PoIhg2p-lnpOXoVWY;->f$0:Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    iput-object p2, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$HistoricalNotificationPreference$2sWvM4d0R0PoIhg2p-lnpOXoVWY;->f$1:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$HistoricalNotificationPreference$2sWvM4d0R0PoIhg2p-lnpOXoVWY;->f$0:Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    iget-object p0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationStation$HistoricalNotificationPreference$2sWvM4d0R0PoIhg2p-lnpOXoVWY;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;->lambda$onBindViewHolder$0$NotificationStation$HistoricalNotificationPreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
