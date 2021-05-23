.class Lcom/android/server/am/irq$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/irq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sis"
.end annotation


# static fields
.field private static zta:Lcom/android/server/am/irq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/irq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/irq;-><init>(Lcom/android/server/am/irq$zta;)V

    sput-object v0, Lcom/android/server/am/irq$sis;->zta:Lcom/android/server/am/irq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zta()Lcom/android/server/am/irq;
    .locals 1

    sget-object v0, Lcom/android/server/am/irq$sis;->zta:Lcom/android/server/am/irq;

    return-object v0
.end method
