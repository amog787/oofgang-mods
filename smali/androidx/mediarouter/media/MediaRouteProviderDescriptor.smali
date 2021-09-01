.class public final Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
    }
.end annotation


# instance fields
.field final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field final mSupportsDynamicGroupRoute:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;Z)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 47
    iput-boolean p2, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mSupportsDynamicGroupRoute:Z

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "routes"

    .line 133
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    .line 138
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouteDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :cond_2
    const-string v1, "supportsDynamicGroupRoute"

    .line 142
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 143
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    invoke-direct {v1, v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method


# virtual methods
.method public getRoutes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    return-object p0
.end method

.method public isValid()Z
    .locals 4

    .line 70
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 72
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public supportsDynamicGroupRoute()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mSupportsDynamicGroupRoute:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouteProviderDescriptor{ "

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "routes="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
