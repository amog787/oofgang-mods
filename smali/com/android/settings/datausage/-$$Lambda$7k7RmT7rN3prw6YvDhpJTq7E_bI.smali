.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$7k7RmT7rN3prw6YvDhpJTq7E_bI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {p1}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getDataUsagePercentage()I

    move-result p0

    return p0
.end method
