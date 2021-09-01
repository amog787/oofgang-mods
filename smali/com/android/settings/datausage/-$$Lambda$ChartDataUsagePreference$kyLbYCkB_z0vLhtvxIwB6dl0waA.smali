.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$ChartDataUsagePreference$kyLbYCkB_z0vLhtvxIwB6dl0waA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/ChartDataUsagePreference;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/-$$Lambda$ChartDataUsagePreference$kyLbYCkB_z0vLhtvxIwB6dl0waA;->f$0:Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object p2, p0, Lcom/android/settings/datausage/-$$Lambda$ChartDataUsagePreference$kyLbYCkB_z0vLhtvxIwB6dl0waA;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/-$$Lambda$ChartDataUsagePreference$kyLbYCkB_z0vLhtvxIwB6dl0waA;->f$0:Lcom/android/settings/datausage/ChartDataUsagePreference;

    iget-object p0, p0, Lcom/android/settings/datausage/-$$Lambda$ChartDataUsagePreference$kyLbYCkB_z0vLhtvxIwB6dl0waA;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->lambda$getDensedStatsData$0$ChartDataUsagePreference(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
