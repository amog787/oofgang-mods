.class public final enum Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;
.super Ljava/lang/Enum;
.source "ConcurrentReferenceHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Restructure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

.field public static final enum NEVER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

.field public static final enum WHEN_NECESSARY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 918
    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    const-string v1, "WHEN_NECESSARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->WHEN_NECESSARY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    const-string v1, "NEVER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->NEVER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    .line 916
    sget-object v4, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->WHEN_NECESSARY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->$VALUES:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 916
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;
    .locals 1

    .line 916
    const-class v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;
    .locals 1

    .line 916
    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->$VALUES:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    invoke-virtual {v0}, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    return-object v0
.end method
