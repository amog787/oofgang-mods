.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSettings$cNx-znoXTF4jojYdlEDF-tL-zIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSettings$cNx-znoXTF4jojYdlEDF-tL-zIY;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSettings$cNx-znoXTF4jojYdlEDF-tL-zIY;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$onSubscriptionDetailChanged$0$MobileNetworkSettings()V

    return-void
.end method
