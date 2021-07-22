.class Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;
.source "VibrationIntensityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;->this$0:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;->this$0:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->access$000(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
