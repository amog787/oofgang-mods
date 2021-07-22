.class public final synthetic Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$6-L3GEC-HBiNe72OpqyJO365318;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$6-L3GEC-HBiNe72OpqyJO365318;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$6-L3GEC-HBiNe72OpqyJO365318;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$6-L3GEC-HBiNe72OpqyJO365318;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iget-object p0, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationSettingsFragment$6-L3GEC-HBiNe72OpqyJO365318;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->lambda$initSeekBarPreference$0$GestureNavigationSettingsFragment(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
