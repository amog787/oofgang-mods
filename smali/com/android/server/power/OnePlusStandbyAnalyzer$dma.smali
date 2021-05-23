.class Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    check-cast p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;)I
    .locals 2

    iget p0, p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->sis:I

    int-to-long v0, p0

    iget p0, p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->sis:I

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
