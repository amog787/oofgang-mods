.class Lcom/android/settings/wfd/WifiDisplayPreferenceController$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplayPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplayPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplayPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplayPreferenceController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplayPreferenceController$1;->this$0:Lcom/android/settings/wfd/WifiDisplayPreferenceController;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayPreferenceController$1;->this$0:Lcom/android/settings/wfd/WifiDisplayPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$000(Lcom/android/settings/wfd/WifiDisplayPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$300(Lcom/android/settings/wfd/WifiDisplayPreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayPreferenceController$1;->this$0:Lcom/android/settings/wfd/WifiDisplayPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$000(Lcom/android/settings/wfd/WifiDisplayPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$500(Lcom/android/settings/wfd/WifiDisplayPreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayPreferenceController$1;->this$0:Lcom/android/settings/wfd/WifiDisplayPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$000(Lcom/android/settings/wfd/WifiDisplayPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$400(Lcom/android/settings/wfd/WifiDisplayPreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayPreferenceController$1;->this$0:Lcom/android/settings/wfd/WifiDisplayPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$000(Lcom/android/settings/wfd/WifiDisplayPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$100(Lcom/android/settings/wfd/WifiDisplayPreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayPreferenceController$1;->this$0:Lcom/android/settings/wfd/WifiDisplayPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$000(Lcom/android/settings/wfd/WifiDisplayPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplayPreferenceController;->access$200(Lcom/android/settings/wfd/WifiDisplayPreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method
