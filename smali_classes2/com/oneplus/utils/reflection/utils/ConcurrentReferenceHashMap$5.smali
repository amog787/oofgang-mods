.class Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$5;
.super Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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


# instance fields
.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;Ljava/lang/Object;)V
    .locals 0

    .line 319
    iput-object p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$5;->val$value:Ljava/lang/Object;

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

    .line 323
    invoke-virtual {p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 324
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$5;->val$value:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
