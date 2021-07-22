.class public Lcom/oneplus/settings/widget/FooterPreferenceMixin;
.super Ljava/lang/Object;
.source "FooterPreferenceMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;


# instance fields
.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;


# virtual methods
.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
