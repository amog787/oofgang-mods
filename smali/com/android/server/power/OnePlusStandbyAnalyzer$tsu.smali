.class Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;->c(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatterySipper;

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;->zta(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .locals 2

    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide p0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method
