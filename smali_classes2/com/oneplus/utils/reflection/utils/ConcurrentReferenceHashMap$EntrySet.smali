.class Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;


# direct methods
.method private constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;)V
    .locals 0

    .line 795
    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 831
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-virtual {p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 804
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 805
    check-cast p1, Ljava/util/Map$Entry;

    .line 806
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->NEVER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getReference(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 807
    invoke-interface {p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 809
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 799
    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntryIterator;

    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-direct {v0, p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntryIterator;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 817
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 818
    check-cast p1, Ljava/util/Map$Entry;

    .line 819
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;->this$0:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-virtual {p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->size()I

    move-result p0

    return p0
.end method
