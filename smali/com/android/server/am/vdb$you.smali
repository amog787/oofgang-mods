.class Lcom/android/server/am/vdb$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
.end annotation


# static fields
.field private static zta:Lcom/android/server/am/vdb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/vdb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/vdb;-><init>(Lcom/android/server/am/vdb$zta;)V

    sput-object v0, Lcom/android/server/am/vdb$you;->zta:Lcom/android/server/am/vdb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zta()Lcom/android/server/am/vdb;
    .locals 1

    sget-object v0, Lcom/android/server/am/vdb$you;->zta:Lcom/android/server/am/vdb;

    return-object v0
.end method
