.class public final enum Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
.super Ljava/lang/Enum;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category$CategoryVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum STICKY:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 533
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 537
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v1, "SUGGESTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 541
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v1, "POSSIBLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 545
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v1, "IMPORTANT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 549
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v1, "DEFERRED_SETUP"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 553
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const-string v1, "STICKY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->STICKY:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-array v1, v8, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 528
    sget-object v8, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 636
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 637
    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 602
    :cond_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->STICKY:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 601
    :cond_1
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 600
    :cond_2
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 599
    :cond_3
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 598
    :cond_4
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 597
    :cond_5
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 622
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category$CategoryVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    .line 528
    const-class v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    .line 528
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-virtual {v0}, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    .line 584
    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return p0
.end method
