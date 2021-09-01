.class public Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicGroupState"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1866
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectionState()I
    .locals 0

    .line 1878
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isGroupable()Z
    .locals 0

    .line 1895
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isGroupable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransferable()Z
    .locals 0

    .line 1903
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isTransferable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnselectable()Z
    .locals 0

    .line 1887
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isUnselectable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
