.class final enum Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;
.super Ljava/lang/Enum;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TaskOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

.field public static final enum RESIZE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

.field public static final enum RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

.field public static final enum RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

.field public static final enum SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 774
    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const-string v1, "RESTRUCTURE_BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const-string v1, "RESTRUCTURE_AFTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const-string v1, "SKIP_IF_EMPTY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const-string v1, "RESIZE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESIZE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    .line 772
    sget-object v6, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    aput-object v6, v1, v2

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->$VALUES:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 772
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;
    .locals 1

    .line 772
    const-class v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;
    .locals 1

    .line 772
    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->$VALUES:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {v0}, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    return-object v0
.end method
