.class public final synthetic Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$Q9tBW_UqmtZkNfVwyJDUmlY-iHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$Q9tBW_UqmtZkNfVwyJDUmlY-iHc;->f$0:Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

    iput-object p2, p0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$Q9tBW_UqmtZkNfVwyJDUmlY-iHc;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$Q9tBW_UqmtZkNfVwyJDUmlY-iHc;->f$0:Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

    iget-object p0, p0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$Q9tBW_UqmtZkNfVwyJDUmlY-iHc;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->lambda$updateState$0$EnterpriseInstalledPackagesPreferenceController(Landroidx/preference/Preference;I)V

    return-void
.end method
