.class Landroidx/slice/SliceViewManagerCompat;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerCompat.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .locals 1

    .line 65
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 1

    .line 59
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/slice/compat/SliceProviderCompat;->getSliceDescendants(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .locals 1

    .line 48
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    return-void
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .locals 1

    .line 53
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {p0, p1, v0}, Landroidx/slice/compat/SliceProviderCompat;->unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    return-void
.end method
