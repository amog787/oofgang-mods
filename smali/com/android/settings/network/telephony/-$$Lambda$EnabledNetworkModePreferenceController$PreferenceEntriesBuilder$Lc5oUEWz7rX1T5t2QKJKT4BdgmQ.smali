.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$Lc5oUEWz7rX1T5t2QKJKT4BdgmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$Lc5oUEWz7rX1T5t2QKJKT4BdgmQ;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$Lc5oUEWz7rX1T5t2QKJKT4BdgmQ;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->lambda$setSelectedEntry$1(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method
