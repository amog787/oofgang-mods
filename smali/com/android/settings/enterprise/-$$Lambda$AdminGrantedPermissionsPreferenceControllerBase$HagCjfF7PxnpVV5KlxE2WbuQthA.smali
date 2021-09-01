.class public final synthetic Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$HagCjfF7PxnpVV5KlxE2WbuQthA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$HagCjfF7PxnpVV5KlxE2WbuQthA;->f$0:Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

    iput-object p2, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$HagCjfF7PxnpVV5KlxE2WbuQthA;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$HagCjfF7PxnpVV5KlxE2WbuQthA;->f$0:Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

    iget-object p0, p0, Lcom/android/settings/enterprise/-$$Lambda$AdminGrantedPermissionsPreferenceControllerBase$HagCjfF7PxnpVV5KlxE2WbuQthA;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->lambda$updateState$0$AdminGrantedPermissionsPreferenceControllerBase(Landroidx/preference/Preference;I)V

    return-void
.end method
