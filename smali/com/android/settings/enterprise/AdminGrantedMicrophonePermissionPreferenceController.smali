.class public Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;
.super Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.source "AdminGrantedMicrophonePermissionPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enterprise_privacy_number_microphone_access_packages"

    return-object p0
.end method
