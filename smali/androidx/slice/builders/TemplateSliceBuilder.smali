.class public abstract Landroidx/slice/builders/TemplateSliceBuilder;
.super Ljava/lang/Object;
.source "TemplateSliceBuilder.java"


# instance fields
.field private final mBuilder:Landroidx/slice/Slice$Builder;

.field private final mContext:Landroid/content/Context;

.field private final mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

.field private mSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p2}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    .line 70
    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0, p2}, Landroidx/slice/builders/TemplateSliceBuilder;->getSpecs(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Landroidx/slice/builders/TemplateSliceBuilder;->selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No valid specs found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSpecs(Landroid/net/Uri;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {}, Landroidx/slice/SliceProvider;->getCurrentSpecs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Landroidx/slice/SliceProvider;->getCurrentSpecs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 127
    :cond_0
    iget-object p0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/slice/SliceManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/slice/SliceManager;->getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object p0

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method protected checkCompatible(Landroidx/slice/SliceSpec;)Z
    .locals 4

    .line 114
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 116
    iget-object v3, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    invoke-virtual {v3, p1}, Landroidx/slice/SliceSpec;->canRender(Landroidx/slice/SliceSpec;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected getBuilder()Landroidx/slice/Slice$Builder;
    .locals 0

    .line 92
    iget-object p0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    return-object p0
.end method

.method protected getClock()Landroidx/slice/Clock;
    .locals 0

    .line 136
    invoke-static {}, Landroidx/slice/SliceProvider;->getClock()Landroidx/slice/Clock;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-static {}, Landroidx/slice/SliceProvider;->getClock()Landroidx/slice/Clock;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    new-instance p0, Landroidx/slice/SystemClock;

    invoke-direct {p0}, Landroidx/slice/SystemClock;-><init>()V

    return-object p0
.end method

.method protected abstract selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method abstract setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method
