.class public Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field mItem:Lcom/android/settings/applications/RunningState$BaseItem;

.field mRootView:Landroid/view/View;

.field mSetBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of v1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    goto :goto_2

    .line 115
    :cond_0
    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v1, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v1, :cond_3

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    if-nez v0, :cond_4

    .line 124
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :cond_3
    instance-of v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    const/4 v1, 0x0

    .line 135
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 136
    iget-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v1, p0

    .line 139
    invoke-static {p2, v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 143
    :cond_5
    iget-object p0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz p2, :cond_7

    .line 144
    check-cast p0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->service_restarting:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 150
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    return-void
.end method
