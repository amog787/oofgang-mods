.class public final synthetic Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;

    invoke-direct {v0}, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;->INSTANCE:Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->lambda$refreshSavedAccessPoints$0(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    return p0
.end method
