.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;
.super Ljava/lang/Object;
.source "SimStatusDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->On5gInfomationUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$900(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    .line 711
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V

    return-void
.end method
