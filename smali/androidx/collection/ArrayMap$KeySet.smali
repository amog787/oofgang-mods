.class final Landroidx/collection/ArrayMap$KeySet;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 298
    iput-object p1, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 301
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 306
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 0

    .line 311
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 316
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 376
    invoke-static {p0, p1}, Landroidx/collection/ArrayMap;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 382
    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    iget v0, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 383
    iget-object v3, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 384
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 0

    .line 326
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 331
    new-instance v0, Landroidx/collection/ArrayMap$KeyIterator;

    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {v0, p0}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArrayMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 336
    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 338
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 346
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 351
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 356
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 361
    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    iget v0, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 362
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 364
    iget-object v3, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 371
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/ArrayMap;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
