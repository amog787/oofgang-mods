.class public final enum Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
.super Ljava/lang/Enum;
.source "PartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 191
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 192
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "BOOL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 193
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "COLOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 194
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "DRAWABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 195
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "STRING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 196
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "DIMENSION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 197
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "FRACTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 198
    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v1, "ILLUSTRATION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    .line 190
    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->INTEGER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    .line 190
    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    .line 190
    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object v0
.end method
