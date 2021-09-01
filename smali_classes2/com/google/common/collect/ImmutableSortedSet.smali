.class public abstract Lcom/google/common/collect/ImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lcom/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableSortedSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSetFauxverideShim<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Lcom/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient descendingSet:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static varargs construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;I[TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 342
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 344
    :cond_0
    invoke-static {p2, p1}, Lcom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 345
    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 348
    aget-object v2, p2, v0

    add-int/lit8 v3, v1, -0x1

    .line 349
    aget-object v3, p2, v3

    .line 350
    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 351
    aput-object v2, p2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 354
    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 355
    array-length p1, p2

    div-int/lit8 p1, p1, 0x2

    if-ge v1, p1, :cond_3

    .line 358
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 360
    :cond_3
    new-instance p1, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 361
    invoke-static {p2, v1}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object p1
.end method

.method static emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object p0, Lcom/google/common/collect/RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 736
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 508
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 631
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 524
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method abstract createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public descendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->descendingSet:Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->descendingSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 693
    iput-object p0, v0, Lcom/google/common/collect/ImmutableSortedSet;->descendingSet:Lcom/google/common/collect/ImmutableSortedSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public first()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 643
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 624
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public headSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 549
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method abstract headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public last()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 648
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 678
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 574
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 577
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method abstract subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public tailSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 592
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 599
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method abstract tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 741
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
