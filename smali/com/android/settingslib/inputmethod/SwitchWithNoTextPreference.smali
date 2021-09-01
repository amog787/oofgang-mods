.class public Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.super Landroidx/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 28
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method
