.class public final enum Lcom/google/protobuf/WireFormat$JavaType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/WireFormat$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum BOOLEAN:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum BYTE_STRING:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum DOUBLE:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum ENUM:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum FLOAT:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum INT:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum LONG:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

.field public static final enum STRING:Lcom/google/protobuf/WireFormat$JavaType;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 85
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->INT:Lcom/google/protobuf/WireFormat$JavaType;

    .line 86
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->LONG:Lcom/google/protobuf/WireFormat$JavaType;

    .line 87
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v2}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/protobuf/WireFormat$JavaType;

    .line 88
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "DOUBLE"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v2}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/protobuf/WireFormat$JavaType;

    .line 89
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "BOOLEAN"

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7, v2}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/protobuf/WireFormat$JavaType;

    .line 90
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    const-string v2, "STRING"

    const/4 v3, 0x5

    const-string v8, ""

    invoke-direct {v0, v2, v3, v8}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->STRING:Lcom/google/protobuf/WireFormat$JavaType;

    .line 91
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x6

    invoke-direct {v0, v8, v9, v2}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/protobuf/WireFormat$JavaType;

    .line 92
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    const-string v2, "ENUM"

    const/4 v8, 0x7

    const/4 v10, 0x0

    invoke-direct {v0, v2, v8, v10}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/protobuf/WireFormat$JavaType;

    .line 93
    new-instance v0, Lcom/google/protobuf/WireFormat$JavaType;

    const-string v2, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v10}, Lcom/google/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    const/16 v2, 0x9

    new-array v2, v2, [Lcom/google/protobuf/WireFormat$JavaType;

    .line 84
    sget-object v10, Lcom/google/protobuf/WireFormat$JavaType;->INT:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v10, v2, v1

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->LONG:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v1, v2, v4

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v1, v2, v5

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v1, v2, v6

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v1, v2, v7

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->STRING:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v1, v2, v9

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/protobuf/WireFormat$JavaType;

    aput-object v1, v2, v8

    aput-object v0, v2, v11

    sput-object v2, Lcom/google/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/google/protobuf/WireFormat$JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/google/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    .line 84
    const-class v0, Lcom/google/protobuf/WireFormat$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/WireFormat$JavaType;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/WireFormat$JavaType;
    .locals 1

    .line 84
    sget-object v0, Lcom/google/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/google/protobuf/WireFormat$JavaType;

    invoke-virtual {v0}, [Lcom/google/protobuf/WireFormat$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/WireFormat$JavaType;

    return-object v0
.end method
