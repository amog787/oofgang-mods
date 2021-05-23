.class Lcom/android/internal/os/MyBatteryStatsHelper$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/MyBatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V
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
.field final synthetic zta:Lcom/android/internal/os/MyBatteryStatsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/MyBatteryStatsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper$zta;->zta:Lcom/android/internal/os/MyBatteryStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatterySipper;

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/MyBatteryStatsHelper$zta;->zta(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .locals 2

    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    iget-wide p0, p1, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method
