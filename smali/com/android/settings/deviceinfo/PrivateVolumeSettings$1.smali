.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsChanged(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$000(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method
