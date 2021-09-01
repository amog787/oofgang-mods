.class public Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    const v0, 0x1020006

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x1020010

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/android/settings/R$id;->widget_summary1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/android/settings/R$id;->widget_summary2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .locals 5

    .line 177
    iget-object v0, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    iget-object v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v2, :cond_0

    instance-of v2, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_0

    .line 182
    move-object v2, p2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 183
    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v2, :cond_0

    .line 184
    move-object v2, p2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 185
    move-object v1, p2

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 186
    move-object v1, p2

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 191
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 192
    iput-object p2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 193
    iput-object p0, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 194
    iget-wide v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 195
    iget-boolean v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->cached:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x0

    .line 200
    iput-object v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lcom/android/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object p0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, p3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 204
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
