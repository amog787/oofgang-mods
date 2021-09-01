.class public final synthetic Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$wvbA3waPG91zIQ9YKuVJlMjUL8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$wvbA3waPG91zIQ9YKuVJlMjUL8Q;->f$0:Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$wvbA3waPG91zIQ9YKuVJlMjUL8Q;->f$0:Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->lambda$updateState$0$EnableContentCaptureWithServiceSettingsPreferenceController(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
