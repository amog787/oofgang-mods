.class public final Landroidx/slice/widget/SliceLiveData;
.super Ljava/lang/Object;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceLiveData$OnErrorListener;,
        Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    }
.end annotation


# static fields
.field public static final OLD_BASIC:Landroidx/slice/SliceSpec;

.field public static final OLD_LIST:Landroidx/slice/SliceSpec;

.field public static final SUPPORTED_SPECS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->OLD_BASIC:Landroidx/slice/SliceSpec;

    .line 73
    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.LIST"

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->OLD_LIST:Landroidx/slice/SliceSpec;

    .line 79
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x5

    new-array v1, v1, [Landroidx/slice/SliceSpec;

    sget-object v3, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v3, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    aput-object v3, v1, v2

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Landroidx/slice/widget/SliceLiveData;->OLD_BASIC:Landroidx/slice/SliceSpec;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Landroidx/slice/widget/SliceLiveData;->OLD_LIST:Landroidx/slice/SliceSpec;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    return-void
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Landroidx/slice/widget/SliceLiveData$OnErrorListener;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-object v0
.end method
