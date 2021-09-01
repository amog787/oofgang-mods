.class final Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$WeakEntryReference;
.super Ljava/lang/ref/WeakReference;
.source "ConcurrentReferenceHashMap.java"

# interfaces
.implements Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakEntryReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry<",
        "TK;TV;>;>;",
        "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final nextReference:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry<",
            "TK;TV;>;I",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1001
    iput p2, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$WeakEntryReference;->hash:I

    .line 1002
    iput-object p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$WeakEntryReference;->nextReference:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;
    .locals 0

    .line 993
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    return-object p0
.end method

.method public getHash()I
    .locals 0

    .line 1006
    iget p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$WeakEntryReference;->hash:I

    return p0
.end method

.method public getNext()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1010
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$WeakEntryReference;->nextReference:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    return-object p0
.end method

.method public release()V
    .locals 0

    .line 1014
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->enqueue()Z

    .line 1015
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
