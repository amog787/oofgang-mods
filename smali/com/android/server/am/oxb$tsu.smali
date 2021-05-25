.class Lcom/android/server/am/oxb$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/oxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tsu"
.end annotation


# static fields
.field private static zta:Lcom/android/server/am/oxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/oxb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/oxb;-><init>(Lcom/android/server/am/oxb$zta;)V

    sput-object v0, Lcom/android/server/am/oxb$tsu;->zta:Lcom/android/server/am/oxb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zta()Lcom/android/server/am/oxb;
    .locals 1

    sget-object v0, Lcom/android/server/am/oxb$tsu;->zta:Lcom/android/server/am/oxb;

    return-object v0
.end method
