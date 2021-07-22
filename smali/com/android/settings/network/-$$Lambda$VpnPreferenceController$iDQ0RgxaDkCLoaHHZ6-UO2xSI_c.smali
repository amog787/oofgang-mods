.class public final synthetic Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/VpnPreferenceController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/VpnPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;->f$0:Lcom/android/settings/network/VpnPreferenceController;

    iput-object p2, p0, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;->f$0:Lcom/android/settings/network/VpnPreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/VpnPreferenceController;->lambda$updateSummary$0$VpnPreferenceController(Ljava/lang/String;)V

    return-void
.end method
