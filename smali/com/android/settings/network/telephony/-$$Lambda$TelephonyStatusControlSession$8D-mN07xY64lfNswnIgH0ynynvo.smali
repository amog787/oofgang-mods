.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$8D-mN07xY64lfNswnIgH0ynynvo;

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

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$unsetAvailabilityStatus$3(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method
