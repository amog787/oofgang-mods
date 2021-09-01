.class abstract Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;
.super Ljava/lang/Object;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)V
    .locals 0

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    array-length p1, p2

    if-nez p1, :cond_0

    const-class p1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->options:Ljava/util/EnumSet;

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
            "TK;TV;>;)TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

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
            "TK;TV;>.Entries;)TT;"
        }
    .end annotation

    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->options:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
