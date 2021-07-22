.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$Bhlp-H48u78tI_9fZ8bQ9nX48Dg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$unsetAvailabilityStatus$4(Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;)V

    return-void
.end method
