.class Lcom/android/settings/applications/ProcessStatsUi$1;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsPackageEntry;Lcom/android/settings/applications/ProcStatsPackageEntry;)I
    .locals 4

    .line 193
    iget-wide v0, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 194
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide p0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    cmpl-double p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 190
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsUi$1;->compare(Lcom/android/settings/applications/ProcStatsPackageEntry;Lcom/android/settings/applications/ProcStatsPackageEntry;)I

    move-result p0

    return p0
.end method
