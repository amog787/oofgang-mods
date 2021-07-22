.class Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "NotificationHistoryRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;II)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;->this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    .line 45
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 56
    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;->this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-static {p2}, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->access$000(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;)Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;->this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->access$000(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;)Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;->onItemSwipeDeleted(I)V

    :cond_0
    return-void
.end method
