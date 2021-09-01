.class Lcom/android/settings/wifi/tether/WifiTetherSettings$1;
.super Landroid/os/Handler;
.source "WifiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 119
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    :cond_0
    return-void
.end method
