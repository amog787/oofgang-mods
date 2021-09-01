.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 0

    return-void
.end method

.method public onSelect()V
    .locals 0

    return-void
.end method

.method public onSetVolume(I)V
    .locals 0

    return-void
.end method

.method public onUnselect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUnselect(I)V
    .locals 0

    .line 421
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect()V

    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0

    return-void
.end method
