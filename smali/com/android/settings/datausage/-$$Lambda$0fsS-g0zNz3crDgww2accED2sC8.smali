.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$0fsS-g0zNz3crDgww2accED2sC8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {p1}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getStartTime()J

    move-result-wide p0

    return-wide p0
.end method
