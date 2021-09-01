.class public Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;
.super Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.source "AdminGrantedLocationPermissionsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enterprise_privacy_number_location_access_packages"

    return-object p0
.end method
