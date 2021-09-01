.class Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;
.super Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
        "TK;TV;>.Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$oldValue:Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 306
    iput-object p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;->val$oldValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry<",
            "TK;TV;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;->val$oldValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;->val$newValue:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 313
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;)Ljava/lang/Object;
    .locals 0

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;->execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
