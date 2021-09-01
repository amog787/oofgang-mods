.class public final enum Lcom/google/android/material/edgeeffect/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/edgeeffect/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/edgeeffect/Rotation;

.field public static final enum INVERSE_LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

.field public static final enum INVERSE_PORTRAIT:Lcom/google/android/material/edgeeffect/Rotation;

.field public static final enum LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

.field public static final enum PORTRAIT:Lcom/google/android/material/edgeeffect/Rotation;


# instance fields
.field private final m_DeviceOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/google/android/material/edgeeffect/Rotation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    const/16 v3, 0x10e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/edgeeffect/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/edgeeffect/Rotation;->LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

    .line 18
    new-instance v0, Lcom/google/android/material/edgeeffect/Rotation;

    const-string v1, "INVERSE_LANDSCAPE"

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/material/edgeeffect/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/edgeeffect/Rotation;->INVERSE_LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

    .line 22
    new-instance v0, Lcom/google/android/material/edgeeffect/Rotation;

    const-string v1, "PORTRAIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/material/edgeeffect/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/edgeeffect/Rotation;->PORTRAIT:Lcom/google/android/material/edgeeffect/Rotation;

    .line 26
    new-instance v0, Lcom/google/android/material/edgeeffect/Rotation;

    const-string v1, "INVERSE_PORTRAIT"

    const/4 v5, 0x3

    const/16 v6, 0xb4

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/material/edgeeffect/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/edgeeffect/Rotation;->INVERSE_PORTRAIT:Lcom/google/android/material/edgeeffect/Rotation;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/material/edgeeffect/Rotation;

    .line 9
    sget-object v6, Lcom/google/android/material/edgeeffect/Rotation;->LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/material/edgeeffect/Rotation;->INVERSE_LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/material/edgeeffect/Rotation;->PORTRAIT:Lcom/google/android/material/edgeeffect/Rotation;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/material/edgeeffect/Rotation;->$VALUES:[Lcom/google/android/material/edgeeffect/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/google/android/material/edgeeffect/Rotation;->m_DeviceOrientation:I

    return-void
.end method

.method public static fromScreenOrientation(I)Lcom/google/android/material/edgeeffect/Rotation;
    .locals 2

    .line 68
    sget-object v0, Lcom/google/android/material/edgeeffect/Rotation;->PORTRAIT:Lcom/google/android/material/edgeeffect/Rotation;

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    return-object v0

    .line 73
    :cond_0
    sget-object p0, Lcom/google/android/material/edgeeffect/Rotation;->INVERSE_PORTRAIT:Lcom/google/android/material/edgeeffect/Rotation;

    return-object p0

    .line 77
    :cond_1
    sget-object p0, Lcom/google/android/material/edgeeffect/Rotation;->INVERSE_LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

    return-object p0

    :cond_2
    return-object v0

    .line 75
    :cond_3
    sget-object p0, Lcom/google/android/material/edgeeffect/Rotation;->LANDSCAPE:Lcom/google/android/material/edgeeffect/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/edgeeffect/Rotation;
    .locals 1

    .line 9
    const-class v0, Lcom/google/android/material/edgeeffect/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/edgeeffect/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/edgeeffect/Rotation;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/material/edgeeffect/Rotation;->$VALUES:[Lcom/google/android/material/edgeeffect/Rotation;

    invoke-virtual {v0}, [Lcom/google/android/material/edgeeffect/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/edgeeffect/Rotation;

    return-object v0
.end method


# virtual methods
.method public getDeviceOrientation()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/google/android/material/edgeeffect/Rotation;->m_DeviceOrientation:I

    return p0
.end method

.method public isLandscape()Z
    .locals 1

    .line 116
    sget-object v0, Lcom/google/android/material/edgeeffect/Rotation$1;->$SwitchMap$com$google$android$material$edgeeffect$Rotation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
