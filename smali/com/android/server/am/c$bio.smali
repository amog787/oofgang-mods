.class final Lcom/android/server/am/c$bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "bio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/c$igw;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/c$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/c$bio;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/c$igw;

    check-cast p2, Lcom/android/server/am/c$igw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/c$bio;->zta(Lcom/android/server/am/c$igw;Lcom/android/server/am/c$igw;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/am/c$igw;Lcom/android/server/am/c$igw;)I
    .locals 7

    new-instance p0, Lcom/android/server/am/c$you;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/c$you;-><init>(DDD)V

    invoke-static {p1, p0}, Lcom/android/server/am/c;->qbh(Lcom/android/server/am/c$igw;Lcom/android/server/am/c$you;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-instance p1, Lcom/android/server/am/c$you;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/c$you;-><init>(DDD)V

    invoke-static {p2, p1}, Lcom/android/server/am/c;->qbh(Lcom/android/server/am/c$igw;Lcom/android/server/am/c$you;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method
