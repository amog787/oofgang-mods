.class Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;
.super Ljava/lang/Object;
.source "VerifyAppsOverUsbPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictedLockUtilsDelegate"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 60
    invoke-static {p1, p2, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method
