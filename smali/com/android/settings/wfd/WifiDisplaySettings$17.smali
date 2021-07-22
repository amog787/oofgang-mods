.class Lcom/android/settings/wfd/WifiDisplaySettings$17;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 762
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 767
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$17;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method
