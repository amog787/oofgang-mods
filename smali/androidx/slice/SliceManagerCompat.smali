.class Landroidx/slice/SliceManagerCompat;
.super Landroidx/slice/SliceManager;
.source "SliceManagerCompat.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/slice/SliceManager;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPinnedSlices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/slice/compat/SliceProviderCompat;->getPinnedSlices(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/slice/compat/SliceProviderCompat;->getPinnedSpecs(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
