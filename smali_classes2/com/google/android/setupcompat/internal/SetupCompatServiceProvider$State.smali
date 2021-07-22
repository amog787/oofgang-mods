.class final enum Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
.super Ljava/lang/Enum;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 253
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 260
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "BIND_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 266
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "BINDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 269
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "CONNECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 276
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "DISCONNECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 283
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "SERVICE_NOT_USABLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 289
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "REBIND_REQUIRED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 250
    sget-object v9, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v9, v1, v2

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    .line 250
    const-class v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    .line 250
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object v0
.end method
