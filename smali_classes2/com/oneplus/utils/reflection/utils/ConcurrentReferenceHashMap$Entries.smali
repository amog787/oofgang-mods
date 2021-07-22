.class abstract Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entries;
.super Ljava/lang/Object;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Entries"
.end annotation


# direct methods
.method private constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)V
    .locals 0

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;)V
    .locals 0

    .line 781
    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entries;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV)V"
        }
    .end annotation
.end method
