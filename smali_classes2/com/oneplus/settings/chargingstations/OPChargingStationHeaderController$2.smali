.class Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$2;
.super Landroid/database/ContentObserver;
.source "OPChargingStationHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;Landroid/os/Handler;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$2;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$2;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;

    invoke-static {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->access$000(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;)V

    return-void
.end method
