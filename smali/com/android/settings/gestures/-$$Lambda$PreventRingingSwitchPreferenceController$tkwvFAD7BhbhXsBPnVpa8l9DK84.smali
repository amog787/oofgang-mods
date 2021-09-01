.class public final synthetic Lcom/android/settings/gestures/-$$Lambda$PreventRingingSwitchPreferenceController$tkwvFAD7BhbhXsBPnVpa8l9DK84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/-$$Lambda$PreventRingingSwitchPreferenceController$tkwvFAD7BhbhXsBPnVpa8l9DK84;->f$0:Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/gestures/-$$Lambda$PreventRingingSwitchPreferenceController$tkwvFAD7BhbhXsBPnVpa8l9DK84;->f$0:Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->lambda$displayPreference$0$PreventRingingSwitchPreferenceController(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
