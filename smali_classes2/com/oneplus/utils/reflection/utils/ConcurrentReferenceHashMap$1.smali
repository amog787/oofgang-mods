.class Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;
.super Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
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
.field final synthetic val$overwriteExisting:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;ZLjava/lang/Object;)V
    .locals 0

    .line 262
    iput-boolean p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;->val$overwriteExisting:Z

    iput-object p4, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entries;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry<",
            "TK;TV;>;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.Entries;)TV;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 266
    invoke-virtual {p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 267
    iget-boolean p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;->val$overwriteExisting:Z

    if-eqz p3, :cond_0

    .line 268
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;->val$value:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;->val$value:Ljava/lang/Object;

    invoke-virtual {p3, p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entries;->add(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
