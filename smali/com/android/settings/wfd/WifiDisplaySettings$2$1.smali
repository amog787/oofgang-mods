.class Lcom/android/settings/wfd/WifiDisplaySettings$2$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings$2;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WifiDisplaySettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$2;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$2;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    return-void
.end method
