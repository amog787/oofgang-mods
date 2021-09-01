.class public final Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field private defaultRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultRequestOptionsFactory:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

.field private final defaultTransitionOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "**>;>;"
        }
    .end annotation
.end field

.field private diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private hardwareBitmapFdLimit:I

.field private isActiveResourceRetentionAllowed:Z

.field private isImageDecoderEnabledForBitmaps:Z

.field private isLoggingRequestOriginsEnabled:Z

.field private logLevel:I

.field private memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

.field private minHardwareDimension:I

.field private requestManagerFactory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    const/4 v0, 0x4

    .line 53
    iput v0, p0, Lcom/bumptech/glide/GlideBuilder;->logLevel:I

    .line 54
    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(Lcom/bumptech/glide/GlideBuilder;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    const/16 v0, 0x2bc

    .line 70
    iput v0, p0, Lcom/bumptech/glide/GlideBuilder;->hardwareBitmapFdLimit:I

    const/16 v0, 0x80

    .line 71
    iput v0, p0, Lcom/bumptech/glide/GlideBuilder;->minHardwareDimension:I

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 506
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v2, :cond_0

    .line 507
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 510
    :cond_0
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v2, :cond_1

    .line 511
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newDiskCacheExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 514
    :cond_1
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v2, :cond_2

    .line 515
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newAnimationExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 518
    :cond_2
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    if-nez v2, :cond_3

    .line 519
    new-instance v2, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 522
    :cond_3
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    if-nez v2, :cond_4

    .line 523
    new-instance v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;-><init>()V

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 526
    :cond_4
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v2, :cond_6

    .line 527
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v2

    if-lez v2, :cond_5

    .line 529
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    iput-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    goto :goto_0

    .line 531
    :cond_5
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 535
    :cond_6
    :goto_0
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v2, :cond_7

    .line 536
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    iget-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getArrayPoolSizeInBytes()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(I)V

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 539
    :cond_7
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    if-nez v2, :cond_8

    .line 540
    new-instance v2, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    iget-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 543
    :cond_8
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    if-nez v2, :cond_9

    .line 544
    new-instance v2, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 547
    :cond_9
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    if-nez v2, :cond_a

    .line 548
    new-instance v2, Lcom/bumptech/glide/load/engine/Engine;

    iget-object v4, v0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v5, v0, Lcom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    iget-object v6, v0, Lcom/bumptech/glide/GlideBuilder;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v7, v0, Lcom/bumptech/glide/GlideBuilder;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 554
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newUnlimitedSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v8

    iget-object v9, v0, Lcom/bumptech/glide/GlideBuilder;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-boolean v10, v0, Lcom/bumptech/glide/GlideBuilder;->isActiveResourceRetentionAllowed:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Z)V

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 559
    :cond_a
    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    if-nez v2, :cond_b

    .line 560
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    goto :goto_1

    .line 562
    :cond_b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    .line 565
    :goto_1
    new-instance v6, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->requestManagerFactory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    invoke-direct {v6, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 568
    new-instance v16, Lcom/bumptech/glide/Glide;

    iget-object v2, v0, Lcom/bumptech/glide/GlideBuilder;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v4, v0, Lcom/bumptech/glide/GlideBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v5, v0, Lcom/bumptech/glide/GlideBuilder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v7, v0, Lcom/bumptech/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    iget v8, v0, Lcom/bumptech/glide/GlideBuilder;->logLevel:I

    iget-object v9, v0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    iget-object v10, v0, Lcom/bumptech/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    iget-object v11, v0, Lcom/bumptech/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    iget-boolean v12, v0, Lcom/bumptech/glide/GlideBuilder;->isLoggingRequestOriginsEnabled:Z

    iget-boolean v13, v0, Lcom/bumptech/glide/GlideBuilder;->isImageDecoderEnabledForBitmaps:Z

    iget v14, v0, Lcom/bumptech/glide/GlideBuilder;->hardwareBitmapFdLimit:I

    iget v15, v0, Lcom/bumptech/glide/GlideBuilder;->minHardwareDimension:I

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;ZZII)V

    return-object v16
.end method

.method setRequestManagerFactory(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->requestManagerFactory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method
