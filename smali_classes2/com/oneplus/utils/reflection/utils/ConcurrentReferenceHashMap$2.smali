.class Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$2;
.super Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
        "TK;TV;>.Task<TV;>;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 284
    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->release()V

    .line 285
    invoke-static {p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->access$000(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
