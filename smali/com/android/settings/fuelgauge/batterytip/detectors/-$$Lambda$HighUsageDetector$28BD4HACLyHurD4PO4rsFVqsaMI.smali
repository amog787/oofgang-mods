.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;->INSTANCE:Lcom/android/settings/fuelgauge/batterytip/detectors/-$$Lambda$HighUsageDetector$28BD4HACLyHurD4PO4rsFVqsaMI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatterySipper;

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->lambda$detect$0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p0

    return p0
.end method
