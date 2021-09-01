.class public Lcom/android/settings/notification/history/NotificationHistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotificationHistoryAdapter.java"

# interfaces
.implements Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/notification/history/NotificationHistoryViewHolder;",
        ">;",
        "Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "NotiHistoryAdapter"


# instance fields
.field private mListener:Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;

.field private mNm:Landroid/app/INotificationManager;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/INotificationManager;Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 61
    invoke-virtual {p2, p0}, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->setOnItemSwipeDeleteListener(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;)V

    .line 62
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mNm:Landroid/app/INotificationManager;

    .line 63
    iput-object p3, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mListener:Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;

    .line 64
    iput-object p4, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p4, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    .line 83
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-interface {p0, p4, v0, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    .line 84
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 86
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object p2

    const-string p4, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 87
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object p2

    const-string p4, "android.provider.extra.CONVERSATION_ID"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    .line 88
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$onRebuildComplete$1(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 2

    .line 125
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$NotificationHistoryAdapter(Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$onBindViewHolder$0(Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onBindViewHolder(Lcom/android/settings/notification/history/NotificationHistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/notification/history/NotificationHistoryViewHolder;I)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 78
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->setPostedTime(J)V

    .line 81
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/notification/history/NotificationHistoryViewHolder;
    .locals 1

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->notification_history_log_row:I

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 71
    new-instance p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemSwipeDeleted(I)V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 132
    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to swipe element out of list: position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    .line 133
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationHistory$HistoricalNotification;

    if-eqz v0, :cond_1

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mNm:Landroid/app/INotificationManager;

    .line 140
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v4

    .line 139
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/INotificationManager;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 142
    sget-object v2, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to delete item"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_DELETE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    .line 145
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-interface {v1, v2, v3, v0, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mListener:Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;->onItemDeleted(I)V

    .line 149
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    .line 125
    sget-object v0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$hS13J5m3lQ9o8T4ity6Z5iDBQVE;->INSTANCE:Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$hS13J5m3lQ9o8T4ity6Z5iDBQVE;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 126
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
