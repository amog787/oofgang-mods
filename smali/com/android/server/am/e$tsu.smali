.class final Lcom/android/server/am/e$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "tsu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/e$sis;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/e$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/e$tsu;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/e$sis;

    check-cast p2, Lcom/android/server/am/e$sis;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/e$tsu;->zta(Lcom/android/server/am/e$sis;Lcom/android/server/am/e$sis;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/am/e$sis;Lcom/android/server/am/e$sis;)I
    .locals 0

    iget-wide p0, p1, Lcom/android/server/am/e$sis;->tsu:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide p1, p2, Lcom/android/server/am/e$sis;->tsu:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method
