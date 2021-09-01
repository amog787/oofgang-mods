.class Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;
.super Ljava/lang/Object;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 600
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$200(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->stopApp(Ljava/lang/String;)V

    .line 602
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$3;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$200(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    :cond_0
    return-void
.end method
