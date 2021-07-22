.class public final synthetic Lcom/android/settings/location/-$$Lambda$AppLocationPermissionPreferenceController$ac1yPXR6twaUXDmJsUKy3pfXzK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/location/AppLocationPermissionPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/-$$Lambda$AppLocationPermissionPreferenceController$ac1yPXR6twaUXDmJsUKy3pfXzK8;->f$0:Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    return-void
.end method


# virtual methods
.method public final onCountPermissionApps(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/location/-$$Lambda$AppLocationPermissionPreferenceController$ac1yPXR6twaUXDmJsUKy3pfXzK8;->f$0:Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->lambda$updateState$1$AppLocationPermissionPreferenceController(I)V

    return-void
.end method
