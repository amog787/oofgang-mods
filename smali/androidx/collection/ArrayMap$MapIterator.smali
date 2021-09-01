.class final Landroidx/collection/ArrayMap$MapIterator;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 531
    iput-object p1, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iget p1, p1, Landroidx/collection/SimpleArrayMap;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    const/4 p1, -0x1

    .line 533
    iput p1, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 589
    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_2

    .line 593
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 596
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 597
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v3, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 590
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 562
    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 563
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 571
    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 572
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    .line 538
    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    iget p0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 603
    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 608
    iget-object v1, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v1, p0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 610
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0

    .line 604
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->next()Ljava/util/Map$Entry;

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    .line 545
    iput-boolean v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    return-object p0

    .line 543
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 2

    .line 551
    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 555
    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    .line 556
    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    return-void

    .line 552
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 580
    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, p0, p1}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 581
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
