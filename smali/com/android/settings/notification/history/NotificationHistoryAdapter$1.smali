.class Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "NotificationHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onBindViewHolder(Lcom/android/settings/notification/history/NotificationHistoryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

.field final synthetic val$hn:Landroid/app/NotificationHistory$HistoricalNotification;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 95
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->notification_history_view_settings:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 98
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 102
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 108
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    invoke-static {p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->access$000(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 110
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onItemSwipeDeleted(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
