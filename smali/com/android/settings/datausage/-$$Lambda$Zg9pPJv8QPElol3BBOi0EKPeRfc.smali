.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$Zg9pPJv8QPElol3BBOi0EKPeRfc;

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

    invoke-virtual {p1}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getEndTime()J

    move-result-wide p0

    return-wide p0
.end method
