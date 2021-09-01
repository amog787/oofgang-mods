.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$MZDHCZr815Ypqhp0_O82pYAJpvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

.field public final synthetic f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$MZDHCZr815Ypqhp0_O82pYAJpvs;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$MZDHCZr815Ypqhp0_O82pYAJpvs;->f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$MZDHCZr815Ypqhp0_O82pYAJpvs;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$MZDHCZr815Ypqhp0_O82pYAJpvs;->f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->lambda$refreshUi$0$RestrictedAppDetails(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
