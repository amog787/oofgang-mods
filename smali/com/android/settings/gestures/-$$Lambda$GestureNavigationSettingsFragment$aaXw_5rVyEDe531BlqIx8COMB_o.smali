.class public final synthetic Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iget-object v1, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$aaXw_5rVyEDe531BlqIx8COMB_o;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->lambda$initSeekBarPreference$1$GestureNavigationSettingsFragment(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
