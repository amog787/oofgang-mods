.class public final Lcom/android/settings/development/autofill/AutofillVisibleDatasetsPreference;
.super Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;
.source "AutofillVisibleDatasetsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "autofill_max_visible_datasets"

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V

    return-void
.end method
