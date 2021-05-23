.class public final enum Lcom/android/server/am/StartAppRecorder$CanStart;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StartAppRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CanStart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/StartAppRecorder$CanStart;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/am/StartAppRecorder$CanStart;

.field private static final synthetic tsu:[Lcom/android/server/am/StartAppRecorder$CanStart;

.field public static final enum you:Lcom/android/server/am/StartAppRecorder$CanStart;

.field public static final enum zta:Lcom/android/server/am/StartAppRecorder$CanStart;


# instance fields
.field public final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/am/StartAppRecorder$CanStart;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/StartAppRecorder$CanStart;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    new-instance v0, Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "Pass"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/android/server/am/StartAppRecorder$CanStart;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    new-instance v0, Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "Block"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/android/server/am/StartAppRecorder$CanStart;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/am/StartAppRecorder$CanStart;

    sget-object v5, Lcom/android/server/am/StartAppRecorder$CanStart;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->tsu:[Lcom/android/server/am/StartAppRecorder$CanStart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/am/StartAppRecorder$CanStart;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/StartAppRecorder$CanStart;
    .locals 1

    const-class v0, Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/StartAppRecorder$CanStart;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/StartAppRecorder$CanStart;
    .locals 1

    sget-object v0, Lcom/android/server/am/StartAppRecorder$CanStart;->tsu:[Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v0}, [Lcom/android/server/am/StartAppRecorder$CanStart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/StartAppRecorder$CanStart;

    return-object v0
.end method
