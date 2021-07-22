.class public final synthetic Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$hMbCNMfk1vTBjfR8IBrpTCOpm4Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$hMbCNMfk1vTBjfR8IBrpTCOpm4Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$hMbCNMfk1vTBjfR8IBrpTCOpm4Y;

    invoke-direct {v0}, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$hMbCNMfk1vTBjfR8IBrpTCOpm4Y;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$hMbCNMfk1vTBjfR8IBrpTCOpm4Y;->INSTANCE:Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$hMbCNMfk1vTBjfR8IBrpTCOpm4Y;

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

    invoke-static {p1}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->lambda$refreshSavedAccessPoints$0(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    return p0
.end method
