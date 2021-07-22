.class public final Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Segment"
.end annotation


# instance fields
.field private volatile count:I

.field private final initialSize:I

.field private final referenceManager:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.ReferenceManager;"
        }
    .end annotation
.end field

.field private volatile references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private resizeThreshold:I

.field final synthetic this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;


# direct methods
.method public constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;I)V
    .locals 1

    .line 443
    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    const/4 v0, 0x0

    .line 435
    iput v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    .line 444
    invoke-virtual {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->createReferenceManager()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->referenceManager:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;

    const/high16 p1, 0x40000000    # 2.0f

    .line 445
    invoke-static {p2, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->calculateShift(II)I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->initialSize:I

    .line 446
    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->createReferenceArray(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->setReferences([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->referenceManager:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    return-object p0
.end method

.method static synthetic access$508(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;)I
    .locals 2

    .line 418
    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    return v0
.end method

.method private createReferenceArray(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 605
    const-class p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    return-object p0
.end method

.method private findInChain(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Ljava/lang/Object;I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_2

    .line 589
    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getHash()I

    move-result p0

    if-ne p0, p3, :cond_1

    .line 590
    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p2, :cond_0

    .line 593
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return-object p1

    .line 598
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getNext()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIndex(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 609
    array-length p0, p2

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private setReferences([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 618
    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    .line 619
    array-length p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getLoadFactor()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->resizeThreshold:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 509
    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 514
    :try_start_0
    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->initialSize:I

    invoke-direct {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->createReferenceArray(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->setReferences([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V

    const/4 v0, 0x0

    .line 515
    iput v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    throw v0
.end method

.method public doTask(ILjava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.Task<TT;>;)TT;"
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESIZE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result v0

    .line 474
    sget-object v1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->restructureIfNecessary(Z)V

    .line 477
    :cond_0
    sget-object v1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    if-nez v1, :cond_1

    .line 478
    invoke-virtual {p3, v2, v2, v2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entries;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 480
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->getIndex(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I

    move-result v8

    .line 483
    iget-object v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    aget-object v7, v1, v8

    .line 484
    invoke-direct {p0, v7, p2, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->findInChain(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Ljava/lang/Object;I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 485
    invoke-interface {v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v2

    .line 486
    :cond_2
    new-instance v9, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment$1;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;Ljava/lang/Object;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;I)V

    .line 496
    invoke-virtual {p3, v1, v2, v9}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entries;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 499
    sget-object p2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 500
    invoke-virtual {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->restructureIfNecessary(Z)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 498
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 499
    sget-object p2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 500
    invoke-virtual {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->restructureIfNecessary(Z)V

    .line 502
    :cond_4
    throw p1
.end method

.method public final getCount()I
    .locals 0

    .line 633
    iget p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    return p0
.end method

.method public getReference(Ljava/lang/Object;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;",
            ")",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->WHEN_NECESSARY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    .line 451
    invoke-virtual {p0, p3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->restructureIfNecessary(Z)V

    .line 453
    :cond_0
    iget p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    if-nez p3, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 457
    :cond_1
    iget-object p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    .line 458
    invoke-direct {p0, p2, p3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->getIndex(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I

    move-result v0

    .line 459
    aget-object p3, p3, v0

    .line 460
    invoke-direct {p0, p3, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->findInChain(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Ljava/lang/Object;I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p0

    return-object p0
.end method

.method protected final restructureIfNecessary(Z)V
    .locals 11

    .line 529
    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    iget v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->resizeThreshold:I

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 530
    :goto_0
    iget-object v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->referenceManager:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;

    invoke-virtual {v3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;->pollForPurge()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 532
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 534
    :try_start_0
    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I

    .line 536
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v3, :cond_2

    .line 538
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz v3, :cond_2

    .line 540
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->referenceManager:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;

    invoke-virtual {v3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;->pollForPurge()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v3

    goto :goto_1

    .line 544
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_3

    .line 548
    iget v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->resizeThreshold:I

    if-lt v0, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 550
    :goto_2
    iget-object v5, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    array-length v5, v5

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    const/high16 p1, 0x40000000    # 2.0f

    if-ge v5, p1, :cond_4

    shl-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    .line 557
    invoke-direct {p0, v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->createReferenceArray(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    :goto_4
    move v3, v2

    .line 560
    :goto_5
    iget-object v5, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    .line 561
    iget-object v5, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->references:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    aget-object v5, v5, v3

    if-nez v1, :cond_6

    const/4 v6, 0x0

    .line 563
    aput-object v6, p1, v3

    :cond_6
    :goto_6
    if-eqz v5, :cond_8

    .line 566
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 567
    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getHash()I

    move-result v6

    invoke-direct {p0, v6, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->getIndex(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I

    move-result v6

    .line 568
    iget-object v7, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->referenceManager:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;

    .line 569
    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v8

    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getHash()I

    move-result v9

    aget-object v10, p1, v6

    .line 568
    invoke-virtual {v7, v8, v9, v10}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceManager;->createReference(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v7

    aput-object v7, p1, v6

    .line 572
    :cond_7
    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getNext()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v5

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    .line 578
    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->setReferences([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V

    .line 580
    :cond_a
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 583
    throw p1
.end method
