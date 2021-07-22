.class Lcom/android/settings/datausage/DataSaverSummary$1;
.super Ljava/lang/Object;
.source "DataSaverSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSaverSummary;->onLoadEntriesCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "DataSaverSummary"

    const-string v1, "onLoadEntriesCompleted............"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataSaverSummary;->access$000(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/AppStateDataUsageBridge;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    return-void
.end method
