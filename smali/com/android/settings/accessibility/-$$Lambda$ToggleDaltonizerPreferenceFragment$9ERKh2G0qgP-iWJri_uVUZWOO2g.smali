.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleDaltonizerPreferenceFragment$9ERKh2G0qgP-iWJri_uVUZWOO2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleDaltonizerPreferenceFragment$9ERKh2G0qgP-iWJri_uVUZWOO2g;->f$0:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleDaltonizerPreferenceFragment$9ERKh2G0qgP-iWJri_uVUZWOO2g;->f$0:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->lambda$onInstallSwitchPreferenceToggleSwitch$0$ToggleDaltonizerPreferenceFragment(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
