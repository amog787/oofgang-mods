.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$ObfukzJxj4OvZ6XClLvNT8fzhCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$ObfukzJxj4OvZ6XClLvNT8fzhCc;->f$0:Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;

    return-void
.end method


# virtual methods
.method public final getAvailabilityStatus(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$ObfukzJxj4OvZ6XClLvNT8fzhCc;->f$0:Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;->getAvailabilityStatus(I)I

    move-result p0

    return p0
.end method
