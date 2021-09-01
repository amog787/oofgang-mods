.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$n09CH4XLMjy9OICF6HhF5SPvJAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$n09CH4XLMjy9OICF6HhF5SPvJAA;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$n09CH4XLMjy9OICF6HhF5SPvJAA;->f$0:Ljava/lang/Class;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    return-object p0
.end method
