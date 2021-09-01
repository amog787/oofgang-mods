.class Lcom/google/common/collect/CompactLinkedHashSet;
.super Lcom/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I

.field private transient successor:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-void
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private succeeds(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 136
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 142
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    goto :goto_1

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput p1, p0, p2

    :goto_1
    return-void
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public clear()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->clear()V

    const/4 v0, -0x2

    .line 172
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 173
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 174
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 175
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method firstEntryIndex()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return p0
.end method

.method getSuccessor(I)I
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget p0, p0, p1

    return p0
.end method

.method init(IF)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 125
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 126
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    const/4 p1, -0x1

    .line 128
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    .line 129
    iget-object p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    const/4 p1, -0x2

    .line 130
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 131
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 151
    iget p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    const/4 p2, -0x2

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    return-void
.end method

.method moveEntry(I)V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 158
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 160
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v2, v2, p1

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    if-eq v0, p1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 166
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v1, p0, v0

    return-void
.end method

.method resizeEntries(I)V
    .locals 3

    .line 180
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    array-length v1, v0

    .line 182
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 183
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    if-ge v1, p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 187
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {p0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :cond_0
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 198
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
