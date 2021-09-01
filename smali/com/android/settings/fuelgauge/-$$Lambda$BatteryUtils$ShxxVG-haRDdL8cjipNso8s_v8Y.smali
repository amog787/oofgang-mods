.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryUtils;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

    iput p2, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$1:I

    iput p3, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$2:I

    iput-object p4, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$1:I

    iget v2, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$2:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryUtils$ShxxVG-haRDdL8cjipNso8s_v8Y;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->lambda$setForceAppStandby$0$BatteryUtils(IILjava/lang/String;)V

    return-void
.end method
