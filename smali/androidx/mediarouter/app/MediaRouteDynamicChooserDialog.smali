.class public Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "MediaRouteDynamicChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;,
        Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;,
        Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUpdateTime:J

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mUpdateRoutesDelayMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 104
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result p2

    .line 103
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 78
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 86
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 108
    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    .line 109
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/mediarouter/R$integer;->mr_update_routes_delay_ms:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mUpdateRoutesDelayMs:J

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .line 214
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    .line 217
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 218
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->refreshRoutes()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 182
    sget p1, Landroidx/mediarouter/R$layout;->mr_picker_dialog:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 183
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setDialogBackgroundColor(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 185
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRoutes:Ljava/util/List;

    .line 186
    sget p1, Landroidx/mediarouter/R$id;->mr_picker_close_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 187
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    .line 195
    sget p1, Landroidx/mediarouter/R$id;->mr_picker_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 197
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 199
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->updateLayout()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    .line 227
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 228
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 174
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 175
    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshRoutes()V
    .locals 6

    .line 235
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 238
    sget-object v1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mLastUpdateTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mUpdateRoutesDelayMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->updateRoutes(Ljava/util/List;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mLastUpdateTime:J

    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mUpdateRoutesDelayMs:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 137
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 139
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->refreshRoutes()V

    :cond_1
    return-void

    .line 131
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "selector must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method updateLayout()V
    .locals 2

    .line 206
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidthForDynamicGroup(Landroid/content/Context;)I

    move-result v0

    .line 207
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogHeight(Landroid/content/Context;)I

    move-result v1

    .line 208
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method updateRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mLastUpdateTime:J

    .line 251
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;->rebuildItems()V

    return-void
.end method
